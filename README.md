# DoubleEntry Reporting

[![License MIT](https://img.shields.io/badge/license-MIT-brightgreen.svg)](https://github.com/envato/double_entry-reporting/blob/master/LICENSE.md)
[![Gem Version](https://badge.fury.io/rb/double_entry-reporting.svg)](http://badge.fury.io/rb/double_entry-reporting)
[![Build Status](https://travis-ci.org/envato/double_entry-reporting.svg?branch=master)](https://travis-ci.org/envato/double_entry-reporting)
[![Code Climate](https://codeclimate.com/github/envato/double_entry-reporting/badges/gpa.svg)](https://codeclimate.com/github/envato/double_entry-reporting)

## Installation

In your application's `Gemfile`, add:

```ruby
gem 'double_entry-reporting'
```

Download and install the gem with Bundler:

```sh
bundle
```

Generate Rails schema migrations for the required tables:

```sh
rails generate double_entry:reporting:install
```

Update the local database:

```sh
rake db:migrate
```

## Development Environment Setup

1. Clone this repo.

    ```sh
    git clone git@github.com:envato/double_entry-reporting.git && cd double_entry-reporting
    ```

2. Run the included setup script to install the gem dependencies.

    ```sh
    ./script/setup.sh
    ```

3. Install MySQL, PostgreSQL and SQLite. We run tests against all three databases.
4. Create a database in MySQL.

    ```sh
    mysql -u root -e 'create database double_entry_reporting_test;'
    ```

5. Create a database in PostgreSQL.

    ```sh
    psql -c 'create database double_entry_reporting_test;' -U postgres
    ```

6. Specify how the tests should connect to the database

    ```sh
    cp spec/support/{database.example.yml,database.yml}
    vim spec/support/database.yml
    ```

7. Run the tests

    ```sh
    bundle exec rake
    ```
