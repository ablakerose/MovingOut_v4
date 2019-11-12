Requirements

1. [x] Use Ruby on Rails Framework
I began the project with a rails new framework
2. Models Must:

    Include: 
    [x] at least one has_many
        Store has_many :items
    [x] at least one belongs_to, and 
        Item belongs_to :store
    [x] at least two has_many :through relationships
        1. Item has_many :users, through: :offers
        2. User has_many :items, through: :offers


    [x] Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user
    Offers the join table (has item_id and user_id) Also has offer_price has the submittable attribute


3. [x] Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.
An offer must include an offer_price and the offer_price must be equal or higher than $0. The offer must also have a user_id and an item_id.
A user must have a username and password

4. [x] You must include at least one class level ActiveRecord scope method. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such      scope :sold, -> { where(sold: true) }
    scope :available, -> { where(sold: false) }
    scope :sort_by_date, -> { order(:created_at)}

5. [x] Your application must provide standard user authentication, including signup, login, logout, and passwords.
A user is able to signup, login, logout and is required to have a password

6. [x] Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...
The application allows the user to login via google.

7. You must include and make use of a nested resource with the appropriate RESTful URLs.
    [x] You must include a nested new route with form that relates to the parent resource
    New offer is nested under item.
    [x] You must include a nested index or show route
    Offer index is nested under item.
8. Your forms should correctly display validation errors.

    [x] a. Your fields should be enclosed within a fields_with_errors class
        Fields are enclosed within a fields_with_errors class.
    [x] b. Error messages describing the validation failures must be present within the view.
        Error messages describe the validation failures and are present in the views.
9. Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.
    [x] Logic present in your controllers should be encapsulated as methods in your models.

    [x] Your views should use helper methods and partials when appropriate.
    There are several form partials when I use a form more than once (errors, offers), private helper methods in the controllers, a number_to_currency method in the application_helper to convert all my floats to currency, as well as a default time format to make dates more readable.
    [x] Follow patterns in the Rails Style Guide and the Ruby Style Guide.
    Check.

10. [x] Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.
I did not use scaffolding to build this project. 