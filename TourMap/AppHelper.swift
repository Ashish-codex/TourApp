//
//  AppHelper.swift
//  TourMap
//
//  Created by Ashish Prajapati on 20/09/24.
//

import Foundation
import MapKit

class AppHelper{
    
    static var locations:[ModelLocation] = [
        
        ModelLocation(
            name: "Gateway Of India Mumbai",
            cityName: "Mumbai",
            description: "The Gateway of India is an arch monument built during the 20th century in Bombay, India. The monument was erected to commemorate the landing of King George V and Queen Mary at Apollo Bunder on their visit to India in 1911. \n The Gateway of India is located on the waterfront at Apollo Bunder area at the end of Chhatrapati Shivaji Marg in South Mumbai and overlooks the Arabian Sea. The monument has also been referred to as the Taj Mahal of Mumbai, and is the city’s top tourist attraction.",
            link: "https://en.wikipedia.org/wiki/Gateway_of_India",
            imgNames: ["Gate_1", "Gate_2", "Gate_3", "Gate_4"],
            coordinates: CLLocationCoordinate2D(latitude: 18.92212930430191, longitude: 72.8346232390982)
        ),
        
        ModelLocation(
            name: "Marine Drive",
            cityName: "Mumbai",
            description: "Marine Drive is the true representation of Mumbai and its people. You’ll find lovers embracing the warmth of nature while nurturing their love, elderly people in groups doing yoga, vendors selling spicy vada pav, kids running around with their kites, health enthusiasts in their element, and cute families creating new memories with their kids. The energy is playful, it's so infectious that even on otherwise gloomy days, Marine Drive Beach Mumbai will fill your heart with hope, positivity and dreams just like the city itself.",
            link: "https://en.wikipedia.org/wiki/Marine_Drive,_Mumbai",
            imgNames: ["Marine_1","Marine_2", "Marine_3", "Marine_4"],
            coordinates: CLLocationCoordinate2D(latitude: 18.94337853813216, longitude: 72.82297684232849)
        ),
        
        
        ModelLocation(
            name: "Hanging Garden",
            cityName: "Mumbai",
            description: "Located on the top of Malabar Hill adjacent to Kamla Nehru Park, is a stunning terrace garden that offers panoramic views of the Arabian Sea.The garden was built in 1880 and is situated on a water reservoir that provides drinking water to the local inhabitants. The gardens have intricate animal-shaped hedges and lush green vegetation, and when viewed from above, spell out the letters PMG. \n Hanging Gardens is an ideal spot for early morning jogs, yoga, and meditation. It also boasts a beautiful flower clock, which adds to the charm of the garden. Whether you're a tourist or a resident, a visit to the Hanging Garden is a must to experience the tranquillity and beauty of Mumbai.",
            link: "https://en.wikipedia.org/wiki/Hanging_Gardens_of_Mumbai",
            imgNames: ["Hanging_Gardern_1", "Hanging_Gardern_2", "Hanging_Gardern_3", "Hanging_Gardern_4"],
            coordinates: CLLocationCoordinate2D(latitude: 18.95678808864392, longitude: 72.80500805345515)
        ),
        
        ModelLocation(
            name: "ISKCON Temple",
            cityName: "Mumbai",
            description: "Spread over four acres of land, Radha Ras Bihari Temple (or commonly known as ISKCON temple) in Mumbai is among the most beautiful temples in the city. Located near the Juhu beach with over a hundred-feet high marble domes, the ISKCON temple cannot be ruled out while visiting the Mumbai nagari. Shree Radha Ras Bihari Ashta Sakhi Temple (the complete name of the temple) is dedicated to Radha-Krishna and the eight companions of Radha. It was opened in 1978 and houses the main temple, an auditorium, a seven-storeyed guest house, a restaurant and a bakery.",
            link: "https://www.iskconmumbai.com/",
            imgNames: ["Ickon_Temple_1","Ickon_Temple_2", "Ickon_Temple_3", "Ickon_Temple_4"],
            coordinates: CLLocationCoordinate2D(latitude: 19.113315053146927, longitude: 72.82656527116426)
        ),
        
        
        
        ModelLocation(
            name: "Mahakali Caves",
            cityName: "Mumbai",
            description: "The Mahakali Caves, also known as the Kondivita Caves, are a collection of 19 rock-cut Buddhist caves dating from the first century BCE to the sixth century CE. This Buddhist monastery may be found in the Andheri neighborhood of Mumbai (Bombay) in western India. This article will explain to you the concepts related to Mahakali Caves which will be helpful in Indian Art and Culture preparation for the UPSC Civil service exam.",
            link: "https://en.wikipedia.org/wiki/Mahakali_Caves",
            imgNames: ["Mahakali_Caves_1", "Mahakali_Caves_2", "Mahakali_Caves_3", "Mahakali_Caves_4"],
            coordinates: CLLocationCoordinate2D(latitude: 19.130572893006338, longitude: 72.87352358505431)
        ),
        
        
        ModelLocation(
            name: "Powai Dam",
            cityName: "Mumbai",
            description: "Powai Lake is an artificial lake, situated in the northern suburb of Mumbai. The lake was created in 1891 by constructing dam between two hillocks across Mithi River. Catchment area of the lake is about 600 hectors and water spread area at full supply level is 220 hectors. The lake water is used for non-potable purposes i.e. gardening and industrial use. \n In recent times, 40% of the lake has disappeared. The lake has deteriorated due to accelerated growth of residential, commercial and industrial area around the lake. The untreated disposal of sewage and garbage from nearby residential and slum colonies have affected the quality of the water.",
            link: "https://en.wikipedia.org/wiki/Powai_Lake",
            imgNames: ["Powai_Dam_1", "Powai_Dam_3", "Powai_Dam_4"],
            coordinates: CLLocationCoordinate2D(latitude: 19.127042544808052, longitude: 72.89640005345946)
        ),
        
        
        ModelLocation(
            name: "Sanjay Gandhi National Park",
            cityName: "Mumbai",
            description: "The Sanjay Gandhi National Park area has a long history dating back to the 4th century BC. In ancient India, Sopoara and Kalyan were two ports in the vicinity that traded with ancient civilizations such as Greece and Mesopotamia. The 45 km (28 mi) land route between these two ports was partially through this forest. The Kanheri Caves in the center of the park were an important Buddhist learning center and pilgrimage site sculpted by Buddhist monks between 9th and 1st centuries BCE. They were chiseled out of a massive basaltic rock outcropping.",
            link: "https://en.wikipedia.org/wiki/Sanjay_Gandhi_National_Park",
            imgNames: ["National_Park_1", "National_Park_2", "National_Park_3", "National_Park_4"],
            coordinates: CLLocationCoordinate2D(latitude: 19.22077261985414, longitude: 72.91293875952178)
        ),
        

        
    
        
        ModelLocation(
            name: "Global Vipassana Pagoda",
            cityName: "Mumbai",
            description: "It is a meditation dome in the outskirts of Mumbai, which is built as a tribute to Sayagyi U Ba Khin, a Vipassana teacher from Myanmar. Situated among the green and peaceful environment of Gorai Island, Global Vipassana Meditation Pagoda Mumbai is one of the Seven Wonders of Maharashtra. It is also one of the must-visit tourist spots in Mumbai. \n Apart from the large main dome, Global Vipassana Pagoda complex has two smaller domes, namely North Pagoda and South Pagoda. Then, there is a seated Buddha statue, carved out of a single marble rock.",
            link: "https://en.wikipedia.org/wiki/Global_Vipassana_Pagoda",
            imgNames: ["Pagoda_1","Pagoda_2", "Pagoda_3", "Pagoda_4"],
            coordinates: CLLocationCoordinate2D(latitude: 19.228375597383522, longitude: 72.80581399382064)
        ),
        
        
        
        
        ModelLocation(
            name: "Uttan Beach",
            cityName: "Mumbai",
            description: "Uttan is a coastal town just north of Mumbai in Thane district of Maharashtra. A coastal town, it comes under the jurisdiction of the Mira-Bhayandar Municipal Corporation.[1] Part Jurisdiction is also handed over to the Mumbai Meteropolitan Region Development Authority (MMRDA). Uttan is located 8 km away from Bhayandar. Its population consist of mainly East Indian Catholics. Its inhabitants are mostly farmers and fishermen. Uttan also has various resorts and tourists are attracted mainly to Valenkanni Beach.",
            link:"https://en.wikipedia.org/wiki/Uttan#:~:text=Uttan%20is%20a%20coastal%20town,8%20km%20away%20from%20Bhayandar.",
            imgNames: ["Uttan_Beach_1","Uttan_Beach_2", "Uttan_Beach_3", "Uttan_Beach_4"],
            coordinates: CLLocationCoordinate2D(latitude: 19.282945556972642, longitude: 72.78384405379985)
        ),
        
        
        
    ]
}
