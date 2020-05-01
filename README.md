# Rails Code Challenge - Pizza Restaurants

For this assessment, you'll be working with a Pizza Restaurant domain.

In this repo, there is a Rails application with some features built out. Your job is to extend this code to add the functionality described in the deliverables below.

## Topics

- MVC
- REST
- Request-Response Cycle
- Forms and Form Helpers
- ActiveRecord
- Validations

## Setup

Before you begin coding your solution, clone this repo and then `cd` into it. Then run `bundle install`, `rails db:migrate`, and `rails db:seed` to install dependencies and set up the database, and run `rails s` to start the server.

## Domain

There are three models in the domain: Restaurant, Pizza, and a join model RestaurantPizza.

Each Restaurant can have many Pizzas. Each Pizza can belong to multiple Restaurants.

Restaurant ---< RestaurantPizza >--- Pizza

## What You Already Have

The starter code has migrations, models, and seed data for the initial Pizza and Restaurant models. There are routes, controllers and views to support listing Restaurants and Pizzas.

Once you have followed the setup instructions above, visiting the `/restaurants` route will display all of the Restaurants. Similarly, visiting `/pizzas` will list all the pizzas.

***Schema***

Restaurant

| Column | Type |
| ------------- | ------------- |
| name | String |
| address | String |

Pizza

| Column | Type |
| ------------- | ------------- |
| name  | String  |
| ingredients | String  |
| created_at  | DateTime  |
| updated_at  | DateTime  |

## Instructions

Update the code of the application to meet the following deliverables. Follow RESTful naming conventions and the MVC pattern to divide responsibility.

***Read through these deliverables carefully to understand the requirements for this code challenge. Tackle them one by one, as they build on each other sequentially.***

### 1. Create the RestaurantPizza Association 😄

Create the join model RestaurantPizza to store the association between Pizzas and Restaurants. Update the schema and models to create the relationship. 😄

Each Restaurant can have many Pizzas. Each Pizza can belong to multiple Restaurants. 😄

### 2. Pizza Show Page 😄

There should be a show page for each Pizza. It should display the name and ingredients. 😄

### 3. Restaurant Show Page 😄

There should be a show page for each Restaurant. It should include:

- the Restaurant's name and address 😄
- a list of the Pizzas it sells 😄

Each pizza in the list should link to that Pizza's show page. 😄

### 4. Restaurants Index Page Links 😄

On the Restaurant index page, each Restaurant's name should link to the restaurant's show page. 😄

### 5. New Pizza Form 😄

Add controller actions and views necessary to show a form to create a new pizza. The form should have:

- an input for the name 😄
- an input for the ingredients 😄
- a dropdown to select an existing restaurant 😄
- a button to save the Pizza 😄

After submitting, the user should be redirected to the new Pizza's show page. 😄

### 6. Pizza Validation 😄

Add validations to the Pizza model so that each pizza must have:

- a name 😄
- ingredients 😄

Add error handling to the Pizza create action. Show any validation errors on the Pizza creation form if the user attempts to save an invalid Pizza. 😄

### 7. Advanced: Pizza Validation 😄

Pizzas should not have the same name. 😄

Add a validation to prevent this. 😄

Update the error handling and error display so that this error shows on the Pizza creation form. 😄

### 8. Advanced: Display Count of Restaurants on Pizza Index Page 😄

On the Pizza index page, display the number of Restaurants that have that Pizza next to each Pizza's name.  😄

### 9. Advanced: Restaurant Update Form to Link Multiple Pizzas

Create a form to update a Restaurant with:

- a text input for the name (with the current name already displayed) 😄
- a text input for the address (with the current address value displayed) 😄
- a list of Pizzas, with a checkbox for each one 😄
- a submit button 😄

The update action should create associations for each of the Pizzas the user selected. 😄

When the form saves, the user should be redirected to the Restaurant show page. 😄

The Restaurant show page should show a link to this edit page. 😄

### Feature Demo

![screen capture of feature demo](pizza-features-demo.gif)

## Rubric

You can find the rubric for this assessment [here](https://github.com/learn-co-curriculum/se-rubrics/blob/master/module-2.md).
