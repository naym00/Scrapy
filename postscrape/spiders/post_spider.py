import scrapy
import json
import psycopg2

class Post_Spider(scrapy.Spider):
    name = "posts"
    location = 'India-Hotels.112.dc.html'
    start_urls = [
        'http://www.kayak.co.in/' + location,
    ]
    def parse(self, response):
        # connection = psycopg2.connect(host = "localhost", database = "hotel_data", user = "postgres", password = "12345", port = 5432)
        # cur = connection.cursor()

        # if self.flag == 1:
        #     # Create Table
        #     cur.execute("Create table hotel_information ( id bigserial not null primary key, hotel_name varchar(150) not null, location varchar(150), rating varchar(15), cost varchar(100) not null, facility varchar(500), url varchar(500) )")
        #     self.flag == 2
        # else:
        #     pass
        # hotel_info = ("ABC", 300, "XYZ", "3.8", "sssssss ddddddd", "www.youtube.com")
        # cur.execute("Insert into hotel_information (hotel_name, cost_per_night, location, rating, facilities, image_url) values (%s, %s, %s, %s, %s, %s)", hotel_info)
        # cur.execute("Select id, hotel_name, cost_per_night, location, rating, facilities, image_url from hotel_information")
        # rows = cur.fetchall()



        # print("{0}".format('\n'))
        # for r in rows:
        #     print("ID: {0}".format(r[0]))
        #     print("Hotel Name: {0}".format(r[1]))
        #     print("Cost Per Night: {0}".format(r[2]))
        #     print("Location: {0}".format(r[3]))
        #     print("Rating: {0}".format(r[4]))
        #     print("Facilities: {0}".format(r[5]))
        #     print("Image URL: {0}".format(r[6]))
        #     print()

        # connection.commit()
        # cur.close()
        # connection.close()



        print()
        print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")

        if(len(response.css('#__R9_HYDRATE_DATA__::text'))!=0):
            str_data = response.css('#__R9_HYDRATE_DATA__::text').get()
            json_data = json.loads(str_data)
            best_hotels = json_data['serverData']['contentState']['bestHotelsModel']['bestHotels']

            hotel_name_price_image = []
            for i in range(0, len(best_hotels), 1):
                hotel_name_price_image.append([best_hotels[i]['name'], best_hotels[i]['price'], best_hotels[i]['imageUrl'].split('?')[0]])
            
            landmark_hotels = json_data['serverData']['contentState']['bestHotelsModel']['landmarkHotels']
            for i in range(0, len(landmark_hotels), 1):
                hotel_name_price_image.append([landmark_hotels[i]['name'], landmark_hotels[i]['price'], landmark_hotels[i]['imageUrl'].split('?')[0]])

            list_data = response.css('div.c44F-content .c44F-item')
            for i in range(0, len(list_data), 1):
                for j in range(0, len(hotel_name_price_image), 1):
                    hotel_name = list_data[i].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-name span::text').get()
                    if hotel_name == hotel_name_price_image[j][0]:
                        print(hotel_name)
                        if list_data[i].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-price-section .soom-neighborhood::text').get() is None:
                            print("Location NULL!")
                        else:
                            print(list_data[i].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-price-section .soom-neighborhood::text').get())
                        
                        if list_data[i].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-rating-wrapper span::text').get() is None:
                            print("Rating is NULL!")
                        else:
                            print(list_data[i].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-rating-wrapper span::text').get().split(' ')[0])
                        
                        if list_data[i].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-price::text').get() is None:
                            print("Cost is NULL!")
                        else:
                            print(hotel_name_price_image[j][1])

                        facility = list_data[i].css('div.soom .soom-content-wrapper .soom-freebies-section .soom-freebies .soom-freebie span::text').getall()
                        if len(facility) == 0:
                            print("Facility is NULL")
                        else:
                            print(facility)
                        
                        print(hotel_name_price_image[j][2])
                print()
        else:
            if(len(response.css('div.Hotels-Region-LatestHotelDeals'))!=0):
                latest_hotels = response.css('div.Hotels-Region-LatestHotelDeals .deals-cities-grid .col-1-3-l')
                for i in range(0, len(latest_hotels)):
                    print(latest_hotels[i].css('div.deal-city a .deal-city-img .deal-city-name::text').get())
                    print('https://www.kayak.co.in' + latest_hotels[i].css('div.deal-city a .deal-city-img img::attr(src)').get().split('?')[0])

                    for j in latest_hotels[i].css('div.deal-city .deal-city-details .deal-city-detail'):
                        print(j.css('div.col-5-12 span::text').get())
                        print(j.css('div.col-5-12 span strong::text').get())
            
            
            if(len(response.css('div.Hotels-Region-HotelsCardList'))!=0):
                
                for i in response.css('div.resultCardsListCarousel .slickHotelCard'):
                    print(i.css('div.js-hotelCard a img::attr(src)').get().split('?')[0])
                    print(i.css('div.js-hotelCard .js-hotelCardContent div div a::text').get())
                    print(i.css('div.js-hotelCard .js-hotelCardContent div .js-RatingText::text').get())
                    print(i.css('div.js-hotelCard .js-hotelCardContent .best-hotel ._iBD .js-price::text').get())
        
        

        print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
        
        # filename = 'posts-%s.html' % self.flag
        # self.flag += 1 
        # with open(filename, 'wb') as f:
        #     f.write(response.body)
