# Shoe-ME! 👞 👠 👟
A Ruby Web App that is used to track shoe brands and what stores they are in

## User-Stories

* As a user, I want to be able to add, update, delete and list shoe stores.
* As a user, I want to be able to add and list new shoe brands.
* As a user, I want to be able to add shoe brands in the application (don't worry about updating, listing or destroying shoe brands).
* As a user, I want to be able to add existing shoe brands to a store to show where they are sold.
* As a user, I want to be able to associate the same brand of shoes with multiple stores.
* As a user, I want to be able to see all of the brands a store sells on the individual store page.
* As a user, I want store names and shoe brands to be saved with a capital letter no matter how I enter them.
* As a user, I do not want stores and/or shoe brands to be saved if I enter a blank name.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

Open Terminal and clone the project by typing

```
git clone https://github.com/vamuigua/Shoe-Distribution.git

cd Shoe-Distribution
```
Your now in the Project! 👍

### Prerequisites

Things you need to install

* Ruby 2.3.1
* psql (PostgreSQL) 9.6.3

```
Give examples
```

### Installing

A step by step series of examples that tell you have to get a development env running

Inside the route of the project, type the code below in your terminal to install the required gems

Install Dependencies: ```$ bundle install```

Create the databases: ```$ rake db:create```

Create the tables: ``` $ rake db:migrate```

Run the app: ```$ ruby app.rb```

Navigate to the following link ```$ localhost:4567```

## Running the tests

Run ```$ rspec ``` in the terminal

##Technologies Used

* Sinatra
* AciveRecord
* Rake
* Rspec

## Built With

* [Ruby](https://www.ruby-lang.org/en/) - Programming Language
* [Materialize](http://materializecss.com/) - Front-end Frame Work 


## Authors

* **Victor Allen** - [vamuigua](https://github.com/vamuigua) :v:

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details