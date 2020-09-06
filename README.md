# "Pet" App

The "Pet" App is inspired by our cohort's love of dogs and all rescue animals.

The user is presented with a fun platform of pets and not-so-ordinary pets, with several options: 
* RENT: The user can book a rental "play-date" with the cute pet of their choice.
* ADOPT: The user can adopt a pet and give him or her their forever home.
* REVIEW: The user can rate and write a review of pets they have booked for play-dates and/or adopted.

The app implements Ruby on Rails MVC design structures and CRUD functionality.

# Domain-Modeling

2 independent models: User, Pet
3 joinder models: Rent, Adoption, Review

User ---< Rent >--- Pet
User ---< Adoption >--- Pet
User ---< Review >--- Pet

***
## Getting Started
To run the "Pet" App, you will need to use the terminal on your computer.

```
    git clone https://github.com/Dong-Yi-Xia/Mod2_Project_pets
```

## Installation and Running the Application

After cloning the repository onto your computer, please run the following commands, one at a time, in your terminal:
```
    bundle install
    rake db:migrate
    rake db:seed
```
To run the App, type the following into the terminal:
```
    ruby bin/run.rb 
```

## Contributors

Dong Xia

Emmanuel Jose

## Resources

https://unsplash.com/


<!-- # README
 read me again
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Emmanuel Jose ..... -->


