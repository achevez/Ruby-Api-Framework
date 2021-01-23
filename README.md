# Ruby-Api-Framework
Ruby test API framework playground.

This is a playground API test framework built with Ruby for the Woocommerce RestAPI that supports the testing-playground project.

## Prerequisites:
* Bundler (Bundler provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions needed.)
* testing-playground app deployed (for additional information, visit: https://github.com/antonyfuentes/testing-playground)
* Environment variables set up for the Woocommerce RestAPI username and password.

## Instructions to execute:
1. Clone the repository and open a terminal.
2. Go to the project folder and to run the tests, execute:
```
bundle install
REPORT_PATH=reports-ruby/ bundle exec rspec spec/
```
