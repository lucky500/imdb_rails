# IMDB Rails

### _November 28, 2017_

### By Luciano Oliveira

## Description

Simple application mirroring IMDB that allow users to enter their favorite movies and rate movies enterered by other users. The project have 4 models, movie, user, category and review. It uses Devise for authentication and it uses a jQuery plugin called jquery.raty to transform a number into stars rating.

## Set-up/Installation Instructions

* Clone this repository
* From the project root directory, run the following commands:

  ```
  bundle install
  rake db:create
  rake db:migrate
  rake db:seed
  rails s
  ```
* You can then access the app in your web browser at ```localhost:3000```

* The database can be seeded with example data provided by [Faker](https://github.com/stympy/faker) by running ```rake db:seed```
## Support and contact details

_Please contact [luciano101@msn.com](mailto:luciano101@msn.com) with questions, comments, or issues._

## Technologies Used

* Ruby
* Rails
* Bootstrap 4
* Devise Gem for Authentication

### License

Copyright (c) 2017 **Luciano Oliveira**

*This software is licensed under the MIT license.*