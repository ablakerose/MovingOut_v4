# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#rails db:reset- completely deletes and rebuilds the database and runs the seed file for me.


#BUILDING USERS

# - has_many :offers
# - has_many :items, through: :offers
# - has_one: store
# - store_id
# - username
# - email
# - password_digest

#STORE
# - has_many :items
# - belong_to :user
# - user_id
# - store_name


store_blake = Store.create(store_name: "Blake's Apartment")
blake = User.create(username: "Blake", email: "blake@blake.com", password: "password")
store_blake.user = blake
blake.store = store_blake 
store_blake.save
blake.save


lamp = Item.create(item_name: "Lamp", list_price: 10, sold: false)
lamp.store = store_blake
scott = User.create(username: "Scott", email: "scott@scott.com", password: "password")
offer_lamp_scott = Offer.new(offer_price: 20)
offer_lamp_scott.item = lamp
offer_lamp_scott.user = scott
lamp.save
scott.save
offer_lamp_scott.save


sofa = Item.create(item_name: "Sofa", list_price: 100, sold: false)
sofa.store = store_blake
offer_sofa_scott = Offer.new(offer_price: 200)
offer_sofa_scott.item = sofa
offer_sofa_scott.user = scott
sofa.save
scott.save
offer_sofa_scott.save

refrigerator = Item.create(item_name: "Refrigerator", list_price: 200, sold: false)
refrigerator.store = store_blake
offer_refrigerator_scott = Offer.new(offer_price: 400)
offer_refrigerator_scott.item = refrigerator
offer_refrigerator_scott.user = scott
refrigerator.save
scott.save
offer_refrigerator_scott.save

tv = Item.create(item_name: "TV", list_price: 300, sold: false)
tv.store = store_blake
bailey = User.create(username: "Bailey", email: "bailey@bailey.com", password: "password")
offer_tv_scott = Offer.new(offer_price: 600)
offer_tv_bailey = Offer.new(offer_price: 150)
offer_tv_scott.item = tv
offer_tv_bailey.item = tv
offer_tv_scott.user = scott
offer_tv_bailey.user = bailey
tv.save
scott.save
bailey.save
offer_tv_scott.save
offer_tv_bailey.save

bed = Item.create(item_name: "Bed", list_price: 400, sold: false)
bed.store = store_blake
offer_bed_bailey = Offer.new(offer_price: 200)
offer_bed_bailey.item = bed
offer_bed_bailey.user = bailey
bed.save
bailey.save
offer_bed_bailey.save






# bailey = User.create(username: "Bailey", email: "bailey@bailey.com", password: "password")

# couch = Item.create(item_name: "Couch", list_price: 100, sold: false)
# couch.store = store_blake


# store_blake.user = blake
# blake.store = store_blake 
# store_blake.save
# blake.save

#ITEMS
# - has_many :offers
# - has_many :users, through: :offers
# - belongs_to :store
# - store_id
# - list_price
# - sold
# - item_name



# #Use ActiveRecord to pre-associate data:
# #OFFER
# # - belongs_to: user
# # - belongs_to :item
# # - user_id
# # - item_id
# # - offer_price 

# bailey_lamp_offer = bailey.offers.create(offer_price: 100, offer_status: false, item_id: lamp.id)
# bailey_couch_offer = bailey.offers.create(offer_price: 10, offer_status: false, item_id: couch.id)

#rails db:reset
