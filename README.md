# README

* Ruby version: 3.1.2

* Rails version
    rails version: 7.0.4

* Database creation
```
  rails db:create db:migrate
  ```
  Dummy username and password in database.yml

* How to run the test suite
    ```
    bundle exec rspec
    ```
* Run linter (rubocop)
    ```
    bundle exec rubocop
    bundle exec rubocop spec/
    bundle exec rubocop app/
    ```
* Starting server
    ```
    bundle exec rails s
    ```

## Notes
The development database will be empty, so you will have to play with the CRUD to add and delete
stuff, driven by the UI. There is no seed file.

### This project comes with some background and context:
https://delirious-radon-007.notion.site/Questions-App-edcc53538bf8489289c7b4646cdcd50f
