[![davidauza-engineer](https://circleci.com/gh/davidauza-engineer/portrait_api/tree/develop.svg?style=svg)](https://circleci.com/gh/davidauza-engineer/portrait_api/?branch=develop)
<a href="https://codeclimate.com/github/davidauza-engineer/portrait_api/maintainability"><img src="https://api.codeclimate.com/v1/badges/15bb2c7161ebfba4b3f0/maintainability" /></a>
<a href="https://codeclimate.com/github/davidauza-engineer/portrait_api/test_coverage"><img src="https://api.codeclimate.com/v1/badges/15bb2c7161ebfba4b3f0/test_coverage" /></a>
![Heroku](https://pyheroku-badge.herokuapp.com/?app=portrait-api-da&style=plastic)

# Portrait API

> This project was created as a coding challenge for Portrait.

## Built With

- Ruby on Rails 6.0.4.7.
- CircleCI.
- Heroku.

## Live Demo

[Live Demo Link](https://portrait-api-da.herokuapp.com/v1/swapi/planets)

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/)
- [Bundler](https://bundler.io/)
- [Git](https://git-scm.com/)
- [Ruby on Rails](https://rubyonrails.org/)
- [PostgreSQL](https://www.postgresql.org/)

### Setup

1. Clone the repository by using `git clone git@github.com:davidauza-engineer/portrait_api.git`.

### Install

1. Move to the root directory of the project by using `cd (path of the project)`.
2. Run `bundle install` to install the required dependencies.
3. Run `bundle exec rails db:create` to create the databases needed.
4. Run `bundle exec rails db:migrate` to migrate the databases.

### Usage

1. To run the rails server run `bundl exec rails s --port 3001`.

We'll be using the port `3001` so we can correctly connect with the [Portrait Client](https://github.com/davidauza-engineer/portrait_client).

### Run tests

1. To run the tests simply run `bundle exec rspec`.

### Deployment

The application is currently deployed on Heroku. Contact me if you want to deploy an specific version.

## Author

👤 **David Auza**

- GitHub: [@davidauza-engineer](https://github.com/davidauza-engineer)
- Twitter: [@davidauzaeng](https://twitter.com/davidauzaeng)
- LinkedIn: [David Auza](https://www.linkedin.com/in/davidauza-engineer/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Thanks to the Portrait team for allowing me to participate in this challenge.
