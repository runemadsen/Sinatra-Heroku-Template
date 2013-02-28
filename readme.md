# Sinatra-Heroku Template

## Getting this Working

1. Download this repository and unzip.

2. Install [RVM](https://rvm.io/rvm/install/), it's the best way to install
Ruby on your computer and prevent anything you do with Ruby from messing up
your system.

3. When you have installed RVM, open Terminal and direct the terminal to where
you downloaded this repository, like so:

    $ cd PLACE_YOU_DOWNLOADED_AND_UNZIPPED_THIS_REPOSITORY

### Creating the bundle

This project tracks its gems with Bundler. If you don't have Bundler installed do so:

    gem install bundler

This command may require running with `sudo`, but I don't have your computer so try it without
`sudo` first.

Then create the bundle. The Gemfile makes use of bundle groups and uses SQLite for development
and Postgres for deploying to Heroku. The `pg` gem is a native extension and might give trouble
during installation. To skip over the `pg` gem exclude the production groups like so:

    bundle install --without production

### Launching the app

Heroku runs Sinatra apps with `rackup` so we will to. To prevent any gem conflicts on your system
use `bundle exec` to only load the gems from your Gemfile.lock:

    bundle exec rackup

Your app should then be running at `http://localhost:9292`.

## Heroku App Creation

To create a Heroku app, first be sure you are [signed up](https://api.heroku.com/signup).

Install the Heroku gem (may require `sudo`):

    gem install heroku

Then type the following in Terminal while inside of the project directory.

    heroku create NAME_OF_YOUR_APP

Once this returns successfully, push your app to Heroku.

    git push heroku master

### TIMEZONES

Heroku's servers have different timestamps than your time zone probably. To have Heroku use your
local time zone for timestamps on datamodels find your timezone on this chart:
http://en.wikipedia.org/wiki/List_of_tz_database_time_zones and then run the following in
Terminal:

    heroku config:add TZ="____YOURTIMEZONE____"
