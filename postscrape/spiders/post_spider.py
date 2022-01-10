import scrapy
import json

class Post_Spider(scrapy.Spider):
    name = "posts"
    page = 1

    start_urls = [
        'https://www.kayak.co.in/Hyderabad-Hotels.7297.hotel.ksp'
    ]
    def parse(self, response):
        print()
        print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
        list_data = response.css('div.c44F-content .c44F-item')
        # if len(list_data)!=0:
        #     for i in range(0, len(list_data), 1):
        #         print(list_data[i].css('div.soom .soom-photo-wrapper .soom-photo::attr(src)').get())
        #         print(list_data[i].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-name span::text').get())
        #         print(list_data[i].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-rating-wrapper span::text').get())
        #         print(list_data[i].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-price-section .soom-neighborhood::text').get())
        #         print(list_data[i].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-price::text').get())
        #         list_lower = list_data[i].css('div.soom .soom-content-wrapper .soom-freebies-section .soom-freebies .soom-freebie span::text').getall()
        #         print(list_lower)
        #         print()
        # else:
        #     list_data = response.css('div.Hotels-Region-LatestHotelDeals .deals-cities-grid div')
        #     for i in range(0, len(list_data), 1):
        #         print(list_data[i].css('div.deal-city a .deal-city-img .deal-city-name::text').get())
        #         print()
        
        

        str_data = response.css('#__R9_HYDRATE_DATA__::text').get()
        json_data = json.loads(str_data)
        best_hotels = json_data['serverData']['contentState']['bestHotelsModel']['bestHotels']
        for i in range(0, len(best_hotels), 1):
            print(best_hotels[i]['imageUrl'].split('?')[0])
            print()
        
        landmark_hotels = json_data['serverData']['contentState']['bestHotelsModel']['landmarkHotels']
        for i in range(0, len(landmark_hotels), 1):
            print(landmark_hotels[i]['imageUrl'].split('?')[0])
            print()

        # print("{0} {1}".format(len(list_data), len(best_hotels)+len(landmark_hotels)))



        # print(len(response.css('div.c44F-content .c44F-item')))
        # list_data = response.css('div.c44F-content .c44F-item')
        print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
        # list_data[0].css('div.soom .soom-photo-wrapper') For Image
        # list_data[0].css('div.soom .soom-content-wrapper .soom-description-wrapper') Upper Section
        # list_data[0].css('div.soom .soom-content-wrapper .soom-freebies-section') Lower Section
        # print(list_data[0].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-name span::text').get())
        # print(list_data[0].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-rating-wrapper span::text').get())
        # print(list_data[0].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-price-section .soom-neighborhood::text').get())
        # print(list_data[0].css('div.soom .soom-content-wrapper .soom-description-wrapper .soom-price::text').get())

        # list_lower = list_data[0].css('div.soom .soom-content-wrapper .soom-freebies-section .soom-freebies .soom-freebie')
        # print(list_lower[0].css('span::text').get())
        # print(list_lower[1].css('span::text').get())
        # print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
        # if str(type(list_data[i].css('div.soom .soom-photo-wrapper .soom-photo::attr(src)').get())) == "<class 'str'>":
        # print("Hidden Image- > " + list_data[i].css('div.soom .soom-photo-wrapper .soom-photo::attr(alt)').get())
        
        # filename = 'posts-%s.html' % self.page
        # self.page += 1 
        # with open(filename, 'wb') as f:
        #     f.write(response.body)
        