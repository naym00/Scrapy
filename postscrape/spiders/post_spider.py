import scrapy
import json
import mysql.connector

connection = mysql.connector.connect(
  host = "localhost",
  database = "hotel_data",
  user = "root",
  password = ""
)
my_cursor = connection.cursor()

#  datalist[0] datalist[1] datalist[2] datalist[3] datalist[4] datalist[5] datalist[6] datalist[7] datalist[8] datalist[9] datalist[10]
#   location   hotel_name   rating       stars        cost       star_1     cost_1       star_2      cost_2     facility       url
def store_data_into_db(datalist):
    sql = "SELECT * FROM hotel_information WHERE hotel_name = %(hotel__name)s AND location = %(loca__tion)s"
    params = {'hotel__name':datalist[1], 'loca__tion':datalist[0]}
    my_cursor.execute(sql, params)

    data_from_database = my_cursor.fetchall()
    if(len(data_from_database) == 0):
        sqlQuery = "INSERT INTO hotel_information (location, hotel_name, rating, stars, cost, star_1, cost_1, star_2, cost_2, facility, url) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
        my_cursor.execute(sqlQuery, (datalist[0], datalist[1], datalist[2], datalist[3], datalist[4], datalist[5], datalist[6], datalist[7], datalist[8], datalist[9], datalist[10]))
        connection.commit()
        print(my_cursor.rowcount, " Data Stored Into Database.")
    else:
        print("Data already exists")

class Post_Spider(scrapy.Spider):
    name = "posts"
    location = 'Germany-Hotels.90.dc.html'
    exact_location = location.split('Hotels')[0][ : len(location.split('Hotels')[0])-1]
    start_urls = [
        'http://www.kayak.co.in/' + location,
    ]
    def parse(self, response):
        if(len(response.css('#__R9_HYDRATE_DATA__::text'))!=0):
            str_data = response.css('#__R9_HYDRATE_DATA__::text').get()
            json_data = json.loads(str_data)
            best_hotels = json_data['serverData']['contentState']['bestHotelsModel']['bestHotels']

            hotel_name_price_image = []
            for i in range(0, len(best_hotels), 1):
                hotel_name_price_image.append([best_hotels[i]['name'], best_hotels[i]['price'], best_hotels[i]['imageUrl'].split('?')[0], best_hotels[i]['stars']])
            
            landmark_hotels = json_data['serverData']['contentState']['bestHotelsModel']['landmarkHotels']
            for i in range(0, len(landmark_hotels), 1):
                hotel_name_price_image.append([landmark_hotels[i]['name'], landmark_hotels[i]['price'], landmark_hotels[i]['imageUrl'].split('?')[0], landmark_hotels[i]['stars']])

            list_data = response.css('div.c44F-content .c44F-item')
            for i in range(0, len(list_data), 1):
                for j in range(0, len(hotel_name_price_image), 1):
                    hotel_name = list_data[i].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-name span::text').get()
                    if hotel_name == hotel_name_price_image[j][0]:
                        # location, hotel_name, rating, stars, cost, star_1, cost_1, star_2, cost_2, facility, url
                        data_for_database = []
                        data_for_database.append(self.exact_location)
                        data_for_database.append(hotel_name)
                        if list_data[i].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-rating-wrapper span::text').get() is None:
                            data_for_database.append('')
                        else:
                            data_for_database.append(list_data[i].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-rating-wrapper span::text').get().split(' ')[0])
                        data_for_database.append(hotel_name_price_image[j][3])
                        if list_data[i].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-price::text').get() is None:
                            data_for_database.append('')
                        else:
                            data_for_database.append(hotel_name_price_image[j][1])
                        data_for_database.append('')
                        data_for_database.append('')
                        data_for_database.append('')
                        data_for_database.append('')

                        facility = list_data[i].css('div.soom .soom-content-wrapper .soom-freebies-section .soom-freebies .soom-freebie span::text').getall()
                        if len(facility) == 0:
                            data_for_database.append('')
                        else:
                            data_for_database.append('+'.join(facility))
                        data_for_database.append(hotel_name_price_image[j][2])
                        store_data_into_db(data_for_database)
        else:
            if(len(response.css('div.Hotels-Region-LatestHotelDeals'))!=0):
                latest_hotels = response.css('div.Hotels-Region-LatestHotelDeals .deals-cities-grid .col-1-3-l')
                for i in range(0, len(latest_hotels)):
                    # location, hotel_name, rating, stars, cost, star_1, cost_1, star_2, cost_2, facility, url
                    data_for_database = []
                    data_for_database.append(self.exact_location)
                    data_for_database.append(latest_hotels[i].css('div.deal-city a .deal-city-img .deal-city-name::text').get())
                    data_for_database.append('')
                    data_for_database.append('')
                    data_for_database.append('')
                    for j in latest_hotels[i].css('div.deal-city .deal-city-details .deal-city-detail'):
                        data_for_database.append(j.css('div.col-5-12 span::text').get().split(' ')[0])
                        data_for_database.append(j.css('div.col-5-12 span strong::text').get()[2: ])
                    data_for_database.append('')
                    data_for_database.append('https://www.kayak.co.in' + latest_hotels[i].css('div.deal-city a .deal-city-img img::attr(src)').get().split('?')[0])
                    store_data_into_db(data_for_database)
            
            if(len(response.css('div.Hotels-Region-HotelsCardList'))!=0):
                for i in response.css('div.resultCardsListCarousel .slickHotelCard'):
                    # location, hotel_name, rating, stars, cost, star_1, cost_1, star_2, cost_2, facility, url
                    data_for_database = []
                    data_for_database.append(self.exact_location)
                    data_for_database.append(i.css('div.js-hotelCard .js-hotelCardContent div div a::text').get())
                    data_for_database.append(i.css('div.js-hotelCard .js-hotelCardContent div .js-RatingText::text').get().split(' ')[0])
                    data_for_database.append('')
                    data_for_database.append(i.css('div.js-hotelCard .js-hotelCardContent .best-hotel ._iBD .js-price::text').get()[2: ])
                    data_for_database.append('')
                    data_for_database.append('')
                    data_for_database.append('')
                    data_for_database.append('')
                    data_for_database.append('')
                    data_for_database.append(i.css('div.js-hotelCard a img::attr(src)').get().split('?')[0])
                    store_data_into_db(data_for_database)