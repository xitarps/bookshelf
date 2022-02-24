# BookShelf - GraphQL study

## Heroku api:
https://book-shelf-xita.herokuapp.com/graphql

## Techinal info:
 - ruby 3.0.3
 - postgres
 - heroku
 - gem 'graphql' - https://github.com/rmosolgo/graphql-ruby

 * exploring graphql api with: https://github.com/altair-graphql/altair

## Some data already set on seeds
```
Authors:
  first_name: "Zabuza", last_name: "Momoshi",
  birth_year: 2004, is_alive: false

  first_name: "Shinji", last_name: "Hikari",
  birth_year: 2001, is_alive: true 

  first_name: "Tetsuo", last_name: "Shima",
  birth_year: 2004, is_alive: false

  first_name: "Alf", last_name: "Tanner",
  birth_year: 1756, is_alive: true 


Users:
  email: "tester@tester.com", password: "123456", is_superadmin: true
  email: "user@user.com"    , password: "654321", is_superadmin: false
```