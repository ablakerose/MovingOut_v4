Moving Out

Item 
- has_many :offers
- has_many :users, through: :offers
- belongs_to :store
- store_id
- list_price
- sold
- item_name

User
- has_many :offers
- has_many :items, through: :offers
- has_one: store
- store_id
- username
- email
- password_digest

Store
- has_many :items
- belong_to :user
- user_id
- store_name

(one seller, create a bunch of items that belong that to seller. have many buyers)

Offer 
- belongs_to: user
- belongs_to :item
- user_id
- item_id
- offer_price 


For join table, think about how we want our relationships to interact with each other. A join table should only happen when we have a many to many relationship, to ensure there is a purpose for it. 
- sold (if are no offers or if offers didn't meet or exceed reserve price before end date... as a seller, could see the items that ended that didn't meet their reserve price or what higher price was)
- item_name

#set end date
#reserve price: wouldn't want to sell unless get X amount of money

#polymorphic association (user can be both buyer and seller)
or use name spacing routes
if assume store would only ever have one owner, then could have admin route. Admin would have more privileges than regular user would have.


User can create a store and add items to the store if they own that store.




Three users
- one store owner
- two others making offers
Generate 5 items and assign those to a store