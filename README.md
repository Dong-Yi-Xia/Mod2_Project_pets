# "Pet" App

The "Pet" App is inspired by our cohort's love of dogs and all rescue animals.

The user is presented with a fun platform of pets and not-so-ordinary pets, with several options: 
* Rent: The user can book a rental "play-date" with the cute pet of their choice.
* Adopt: The user can adopt a pet and give him or her their forever home.
* Review: The user can rate and write a review of pets they have booked for play-dates and/or adopted.

The app implements Ruby on Rails MVC design structures and CRUD functionality.

# Domain-Modeling

2 independent models: User, Pet

3 joiner models: Rent, Adoption, Review

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

After cloning and opening the repository onto your computer, please run the following commands, one at a time, in your terminal:
```
    bundle install
    rails db:migrate
    rails db:seed
    rails s
```
To run the App, type the following into your web browser:
```
    http://localhost:3000/ 
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


<pets/show/id >


<!-- 
 <%= form_for @review do |f| %>

  <%= f.label 'Rating:' %><br>
  <%= f.radio_button :rating, 1 %>1
  <%= f.radio_button :rating, 2 %>2
  <%= f.radio_button :rating, 3 %>3
  <%= f.radio_button :rating, 4 %>4
  <%= f.radio_button :rating, 5 %>5<br><br>


  <%= f.label 'Content:' %>  <br>
  <%= f.text_area :content %><br><br>

  <%= f.submit "Submit Review" %>
<% end %> 
-->

<!-- 
<%= form_for @rent do |f| %>
    <%= f.label 'Duration:' %><br></strong>
    <%= f.radio_button :duration, 30 %> 30 minutes
    <%= f.radio_button :duration, 60 %> 60 minutes
    <%= f.radio_button :duration, 90 %> 90 minutes
    <%= f.radio_button :duration, 120 %> 120 minutes
    <br><br>
-->

<!--
<%= form_for @adoption do |f| %>
    <%= f.label "Would you like to adopt?" %><br><br>
    <%= f.submit "Adopt this pet!"%>

<% end %>
-->



