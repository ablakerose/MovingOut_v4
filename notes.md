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

once I seed items and have store, then start wtih an index page of the store view with all the items from that store. 
Get the user sign-in / sign-up process working
User being able to look at a store and make an offer on an item.
Store owner see all the offers. (from store show page, check current user id's equal to owner of the store, and if it is, I will open up more funcitonality for the owner: adding items, etc.)
Then, I can worry about giving other users ability to create store. 


To find something's errors
object.errors OR object.save!


When you have belongs_to relationships, must define them or an object WONT save to the database.


QUESTIONS


To view all a user's items. 
A user has many items through offers. User.offers.items



<%= f.hidden_field :user_id, value: session[:user_id]%>


FOR SUNDAY NOVEMBER 3rd: create button store index page so that logged in user can make an offer on a particular item.
- SEE study group - rails nested routes - 10/16/19 - 40:54


How sessions work: 
Video Review: Authentication-- https://learn.co/tracks/online-software-engineering-structured/rails/auth/video-review-authentication 1:00:00

ApplicationController - you can put functionality that all 
def authentication_required
    if !logged_in?
        redirect_to root_path
    end
end

def logged_in?
session[:user_id]
end
ApplicationController<ActionController::Base>
def current_user
    User.find(session[:user_id])
end
#Methods you build in controllers do not permeate to your ActionVew part of your code
#THIS IS A HELPER METHOD, PLEASE LET ME USE IT IN MY VIEW!