import scrapy

class Post_Spider(scrapy.Spider):
    name = "posts"
    page = 1

    start_urls = [
        'https://www.kayak.co.in/Hyderabad-Hotels.7297.hotel.ksp',
    ]
    def parse(self, response):
        # print()
        # print()
        print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")   
        # # print(response.css('p::text').getall())
        hotel_name = response.css('div.soom-description a span::text')[0].get()
        hotel_rating = response.css('div.soom-description .soom-rating-wrapper span::text')[0].get().split(" ")[0]
        hotel_str = response.css('div.soom-description .soom-price-section span::text')[0].get()
        hotel_price = response.css('div.soom-description .soom-price::text')[0].get()
        hotel1 = response.css('div.soom-freebies')[0].get().split("yRv1-text")[1]
        hotel2 = response.css('div.soom-freebies')[0].get().split("yRv1-text")[2]
        hotel3 = response.css('div.soom-freebies')[0].get().split("yRv1-text")[3]

        h1 = hotel1.split("<");
        h2 = hotel2.split("<");
        h3 = hotel3.split("<");        

        print(h1[0][2: len(h1[0])])
        print(h2[0][2: len(h2[0])])
        print(h3[0][2: len(h3[0])])
        # hotel_1 = hotel[0].response.css('div.soom-freebie').get()
        #  .soom-freebie .yRv1-text::text
        # li_2 = li.response.css('.ct-div-block')[0]
        print(hotel_name)
        print(hotel_rating)
        print(hotel_str)
        print(hotel_price)
        # print(hotel_1)
        print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
        # print()
        # print()   
        # filename = 'posts-%s.html' % self.page
        # self.page += 1 
        # with open(filename, 'wb') as f:
        #     f.write(response.body)