# Sinatra-Heroku Template

#### _A template to quickly get [Sinatra](http://sinatrarb.com) apps running and served up on [Heroku](http://heroku.com)._

## Installation

First be sure to have Ruby installed. Then get the Sinatra, Bundler and Heroku gems

    $ gem install sinatra
    $ gem install bundler
    $ gem install heroku

Download this template and `cd` to it.

To run the app locally, bundle the gems and then run with rackup.

    $ bundle --without production
    $ bundle exec rackup

Your app should then be running at `http://localhost:9292`.

## Heroku App Creation

Heroku relies on [Git](http://devcenter.heroku.com/articles/git) for deploying apps so initialize git for the app.

    $ git init
    $ git add .
    $ git commit -m "Initial Commit"

To create a Heroku app, first be sure you are [signed up](https://api.heroku.com/signup). Then type the following in Terminal while inside of the project directory.

    $ heroku create NAME_OF_YOUR_APP

Once this returns successfully, push your app to Heroku.

    $ git push heroku master

And there you are.

## App Structure

This is a bit more complicated than a single file Sinatra app. Why? For organization's sake. First the `config.ru` file tells Heroku that the file `application.rb` is a Sinatra app.

- `app/`
    - `routes/` Put all routing inside this directory
        - `application_routes.rb` File containing routes for the app.
    - `views/` The home for templates.
        - `style.scss` SASS file that is set to respond to `/stylesheets/style.css`
- `application.rb` Main file for the app, set config options here.
- `config.ru`
- `Gemfile`
- `helpers.rb`
- `public/`
    - `javascripts/`
- `readme.md`