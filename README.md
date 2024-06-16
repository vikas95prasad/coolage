# Coolage Restaurant Menu Management System

This project is a "Coolage Restaurant Menu Management System" built with Ruby on Rails. It allows you to manage menus, sections, items, modifier groups, and modifiers efficiently.

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Database Setup](#database-setup)
- [Running the Application](#running-the-application)
- [Running Tests](#running-tests)
- [Contributing](#contributing)
- [License](#license)

## Requirements

- Ruby 3.0.5
- Rails 7.1
- PostgreSQL

## Installation

1. **Clone the repository**

    ```sh
    git clone git@github.com:vikas95prasad/coolage.git
    cd coolage
    ```

2. **Install dependencies**

    Make sure you have `bundler` installed. If not, install it using:

    ```sh
    gem install bundler
    ```

    Then install the project dependencies:

    ```sh
    bundle install
    ```

## Database Setup

1. **Database configuration**

    Update the `config/database.yml` file with your PostgreSQL credentials.

    ```yml
    default: &default
      adapter: postgresql
      encoding: unicode
      pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
      username: your_postgresql_username
      password: your_postgresql_password
      host: localhost

    development:
      <<: *default
      database: coolage_development

    test:
      <<: *default
      database: coolage_test

    production:
      <<: *default
      database: coolage_production
      username: coolage
      password: <%= ENV['RESTAURANT_MENU_MANAGEMENT_DATABASE_PASSWORD'] %>
    ```

2. **Create and setup the database**

    Run the following commands to create the database, run migrations, and seed the database:

    ```sh
    rails db:create
    rails db:migrate
    rails db:seed
    ```

## Running the Application

1. **Start the Rails server**

    ```sh
    rails server
    ```

    The application will be accessible at `http://localhost:3000`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/vikas95prasad/coolage. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License

The project is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
