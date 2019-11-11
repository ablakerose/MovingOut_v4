Requirements

1. [x] Use Ruby on Rails Framework
2. Models Must:

    [x] Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships

    [x] Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user
    
3. [x] Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.

4. [x] You must include at least one class level ActiveRecord scope method. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).
#would exist on my model
#if i want a custom query for that model that i'm going to use a bunch of times.

#in my items index page, i could have ab uttom that would say "sort by: name". Clicking the button would produce a get request that would call that particular scope method and then return the data sorted.

5. [x] Your application must provide standard user authentication, including signup, login, logout, and passwords.

6. [x] Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...

7. You must include and make use of a nested resource with the appropriate RESTful URLs.
    [x] You must include a nested new route with form that relates to the parent resource
    [x] You must include a nested index or show route

8. Your forms should correctly display validation errors.

    [x] a. Your fields should be enclosed within a fields_with_errors class

    [x] b. Error messages describing the validation failures must be present within the view.

9. Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.
    [] Logic present in your controllers should be encapsulated as methods in your models.
    [] Your views should use helper methods and partials when appropriate.
    [] Follow patterns in the Rails Style Guide and the Ruby Style Guide.

10. [x] Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.