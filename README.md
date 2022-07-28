

# CF Rails Homework

As part of our application process, we'd like to see what you can produce by giving you a small assignment. It should take you no more than a few days to complete the assignment, but any extra polish or features you might want to put in will not go unnoticed.

## The assignment

We would like you to create an currency conversion app. The features it should include:

 - [ ] The app should fetch and display currency conversion rates. To get rates you need to use the free API: fixer.io
 - [ ] The app consists of two pages: first one is currency conversion rates, the other one is a management page.

#### Pages - Display (1)

Display all conversion rates in format:

| Currency1   | Currency2   | Rate  |
| ----------- | ----------- | ----- |
| USD         | EUR         | 0.922 |
| TRY         | JPY         | 13.41 |

Below, display a link or button that will redirect to page 2.

#### Pages - Manage (2)

Allow to add conversion pairs like:

[USD] [EUR] [+] where [USD], [EUR] are selects letting you pick conversion pair, and [+] is a button saving it.

Below, list all added conversion pairs and allow the user to remove them with click of a link or a button.

#### Extra credit features

 - [ ] Real time currency updates
 - [ ] Polish and UX
 - [ ] Highly reusable components
 - [ ] Tests

## Requirements

  - Conversion rates should be saved in the database and refreshed with Rake task. It **cannot** be fetched in time of loading Pages - Display (1).
  - Conversion pairs should also be saved in the database.
  - You can use any DB engine you want (SQLite, MySQL, Postgres…).
  - Use newest stable Rails version.
  - Don’t worry too much about front-end but if you want to make a good impression you can use something like Bootstrap.
  - Make sure README includes all required steps to run your app on Unix-like environment. We’ll do our best to run your app on our computers, but if you use something non-standard you should let us know about it.


If you have any questions, please ask!

To complete your homework, please fork this repo and commit your work to your fork. When you are ready for us to look at it, give us access to your fork so we can review and run it.
 
## Running

Things you may want to cover:

* Ruby version => ruby 3.0.3

* Ruby on Rails version => Rails 7.0.2.3

* Database creation => rails db:create

* To run rails => rails server

* To save database => rails db:migrate

* How to run the test suite 
   To run a rake task => bundle exec rake conversion:mission

* Pull api information from => https://fastforex.readme.io/reference/introduction
  After you become a member of the website, you need to write the required key in the key section in the
  mission controller field.


 
