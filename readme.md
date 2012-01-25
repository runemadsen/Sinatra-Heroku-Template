# Sinatra-Heroku Template

I've made a lot of Sinatra apps and am tired of creating all the files and stylesheet
templates and Javascript libraries I frequently used. So I've forked this template from
[runemadsen](https://github.com/runemadsen) and created a script to speed up starting a
new Sinatra application.

## Prerequisites

- Git
- Ruby

Tested on Mac OS X Lion with rbenv and Ruby 1.9.3-p0

## Installation

### Run the script

Starting a new Sinatra app with this template requires only the following three commands
in your friendly Terminal:

    mkdir NAME_OF_YOUR_APP
    cd NAME_OF_YOUR_APP
    curl -L https://github.com/stevenklise/Sinatra-Heroku-Template/raw/master/lib/install.sh | sh

### Clone the Repo

If you'd like, you can clone this repository. Optionally replace NAME_OF_YOUR_APP with,
well, the name of your app or leave it out to clone into Sinatra-Heroku-Template

    git clone https://github.com/stevenklise/Sinatra-Heroku-Template.git NAME_OF_YOUR_APP

If you go this route you will have a git repository in the folder with all of the project's
history as well as the shell script to install this template with. It's your call, I use the
first method myself.

## Local development

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

BOOM. Web 3.0beta