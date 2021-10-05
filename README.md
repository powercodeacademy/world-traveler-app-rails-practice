# Rails Code Challenge - World Traveler

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

There are three models in the domain: Traveler, Country, and a join model Vacation.

Each Country can have multiple travelers. Travelers can also go to multiple Countries.

## What You Already Have

The starter code has migrations, models, and seed data for the initial Traveler and Country models. There are also routes, controllers and views to support the Traveler and Country index pages.

Once you have followed the setup instructions above, visiting the `/travelers` route will display all of the Travelers. Similarly, visiting `/countries` will list all the countries.

***Schema***

Country

| Column | Type |
| ------------- | ------------- |
| name | String |
| description | String |
| created_at  | DateTime  |
| updated_at  | DateTime  |

Traveler

| Column | Type |
| ------------- | ------------- |
| name | String  |
| age | Integer  |
| created_at  | DateTime  |
| updated_at  | DateTime  |

## Instructions

***Specs are available to help test drive them. Use them if you want!***

Update the code of the application to meet the following deliverables. Follow RESTful naming conventions and the MVC pattern to divide responsibility.

***Read through these deliverables carefully to understand the requirements for this code challenge. Tackle them one by one, as they build on each other sequentially.***

### 1. Vacation association - DONE

Create the association between the models. Update the schema and models to create the Vacation association.

A Vacation should have a:

- country
- traveler
- favorite

Each Country can have multiple travelers. Travelers can belong to multiple Countries. Each Vacation can be marked as a favorite or not a favorite.

### 2. Country index page links - DONE

On the countries index page, a country's name should link to that country's show page.

### 3. Country show page - DONE

Each Country show page should include the:

- name (eg. Argentina)
- description (eg. Second Largest Country in South America)

### 4. Traveler show page - DONE

Traveler show page should include the:

- name
- age

### 5. Vacation Create page - DONE

Show a form to associate a Country with a Traveler. It should have:

- a select dropdown to choose a Country
- a select dropdown to choose a Traveler
- a checkbox to say whether or not the vacation is a favorite
- a submit button to create the Vacation

After successfully creating a Vacation, the user should be redirected to the selected Country's show page.

### 6. Display Countries' Travelers - DONE

Update the Country show page to display the Travelers that the country has.

Each traveler should link to the corresponding Traveler show page.

### 7. Display Travelers' Favorite Countries - DONE

Update the Traveler show page to display the Countries that are the traveler's favorite Countries to visit

Each country should link to the corresponding Country show page.