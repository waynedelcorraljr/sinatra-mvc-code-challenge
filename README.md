# Sinatra MVC

## Part 1: Conceptual Question
* Describe the responsibility of each component in an MVC application architecture, as well as what programming languages we use in each component

## Part 2: Coding Challenge - Expanding the Online Tea Shop
* A tea-brewing shop asks you to build them a web application that lets their customers place orders online. Last week you familiariazed yourself with Sinatra, the web framework you will use to build the app. This week, you will create a VERY basic version of the tea ordering system.
1. Use the `corneal` gem to quickly spin up a Sinatra project skeleton.
2. Create a db table and corresponding model class for the `tea` model. What naming pattern between classes and tables do you need to adhere to for ActiveRecord to do be able to relate them? Why? (think back to dynamic ORMs)
3. When we test our routes, we want them to return data. Make a `seeds.rb` file in the `db` directory that creates some new tea data in the db when run. (It can be run with the rake task `db:seed`. How can you create new tea records?
4. Create a controller for your `tea` model with a route `get /teas`. This route should return a heading "Teas available on [today's date], and then should list all available teas.
5. If you didn't in the previous step, create a view with some html to display the result. Consider two things: How will you pass the tea data from the controller to the view to display, and how will you display the current time in the view file?
6. Add functionality for a user on the app to place an order, basically alerting the shop to start preparing a tea that will be ready to be picked up. First, refactor the teas display view to include a single-input form with a submit button below each tea selection where a user can enter their name. Then, create a route `post /order` in the teas controller that will be responsible for handling the request when a user submits the form. This route should return a message "Successfully placed order for [name]".
