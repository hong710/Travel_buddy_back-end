# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# restaurants = Restaurant.create(
#     [
#         { 
#             name: "Brigantine Seafood Restaurant",
#             img: "https://media-cdn.tripadvisor.com/media/photo-s/07/5b/d4/3b/brigantine-seafood-restaurant.jpg",
#             address: "13445 Poway Rd, Poway, CA 92064-4713",
#             phone: "+1 858-486-3066",
#             review:"4.5"
#         },
#         { 
#             name: "Veranda Fireside Lounge & Restaurant",
#             img: "https://media-cdn.tripadvisor.com/media/photo-w/0f/64/60/e2/veranda-fireside-lounge.jpg",
#             address: "17550 Bernardo Oaks Dr Rancho Bernardo Inn, San Diego, CA 92128-2112",
#             phone: "+1 877-509-9512",
#             review:"4.5"
#         }, 
#         { 
#             name: "AVANT Restaurant",
#             img: "https://media-cdn.tripadvisor.com/media/photo-w/05/3e/f2/96/avant.jpg",
#             address: "17550 Bernardo Oaks Dr, San Diego, CA 92128-2112",
#             phone: "+1 877-436-7759",
#             review:"4.5"
#         }
#     ]
#     )

#     user_restaurants = UserRestaurant.create(
#         [
#             { 
#                 user_id: 1,
#                 restaurant_id: 1
#             }, 
#             { 
#                 user_id: 1,
#                 restaurant_id: 2
#             }, 
#             { 
#                 user_id: 1,
#                 restaurant_id: 3
#             }
        
#         ]

#     )


    activities = Activity.create(
        [
            { 
                name: "Brigantine Seafood Restaurant",
                img: "https://media-cdn.tripadvisor.com/media/photo-s/07/5b/d4/3b/brigantine-seafood-restaurant.jpg",
                address: "13445 Poway Rd, Poway, CA 92064-4713",
                phone: "+1 858-486-3066",
                category: "restaurant",
                review:"4.5"
            },
            { 
                name: "Veranda Fireside Lounge & Restaurant",
                img: "https://media-cdn.tripadvisor.com/media/photo-w/0f/64/60/e2/veranda-fireside-lounge.jpg",
                address: "17550 Bernardo Oaks Dr Rancho Bernardo Inn, San Diego, CA 92128-2112",
                phone: "+1 877-509-9512",
                category: "restaurant",
                review:"4.5"
            }, 
            { 
                name: "Sonesta ES Suites San Diego - Rancho Bernardo",
                img: "https://media-cdn.tripadvisor.com/media/photo-s/21/5f/dc/a8/exterior-front.jpg",
                address: "17550 Bernardo Oaks Dr, San Diego, CA 92128-2112",
                phone: "+1 877-436-7759",
                category: "hotel",
                review:"4.5"
            }

        ]
        )
        user_restaurants = UserActivity.create(
            [
                { 
                    user_id: 1,
                    activity_id: 1
                }, 
                { 
                    user_id: 1,
                    activity_id: 2
                }, 
                { 
                    user_id: 1,
                    activity_id: 3
                }, 
                { 
                    user_id: 1,
                    activity_id: 4
                }
            
            ]
    
        )