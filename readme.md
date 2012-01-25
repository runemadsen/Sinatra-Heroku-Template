# Sinatra-Heroku Template

#### _A template to quickly get [Sinatra](http://sinatrarb.com) apps running and served up on [Heroku](http://heroku.com)._

## Installation

  mkdir NAME_OF_YOUR_APP
  cd NAME_OF_YOUR_APP
  curl -L https://github.com/stevenklise/Sinatra-Heroku-Template/raw/master/lib/install.sh | sh

Be sure you have Bundler installed and then create a bundle.

  gem install bundler
  bundle install --without production

You may need do these commands with `sudo`.

To run the app locally, bundle the gems and then run with rackup.

    bundle exec rackup

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