# Sinatra-Heroku Template

#### _A template to quickly get [Sinatra](http://sinatrarb.com) apps running and served up on [Heroku](http://heroku.com)._

## Installation

First be sure to have Ruby installed. Then download this template, `cd` to it, and install the gems

    $ bundle install

THen install postgres.app and follow the instructions to set up a database for the app.

To run the app locally, install Shotgun and run

		$ gem install shotgun
    $ shotgun config.ru

Your app should then be running at `http://localhost:9393`.

## Heroku App Creation

Heroku relies on [Git](http://devcenter.heroku.com/articles/git) for deploying apps so initialize git for the app.

    $ git init
    $ git add .
    $ git commit -m "Initial Commit"

To create a Heroku app, first be sure you are [signed up](https://api.heroku.com/signup). Then type the following in Terminal while inside of the project directory.

    $ heroku create NAME_OF_YOUR_APP

Once this returns successfully, push your app to Heroku.

    $ git push heroku master


## Heroku Database Creation

If you're using DataMapper with a database, you will need to add a database. Run these commands from the root of your project:

	$ heroku addons:add heroku-postgresql:dev
	$ heroku pg:promote HEROKU_POSTGRESQL_RED_URL

Now you've created your database. Now you need to update the tables:

	$ heroku run console
	$ require './app.rb'
	$ DataMapper.auto_upgrade!
	$ exit