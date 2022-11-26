#!/usr/bin/env bash
# exit on error
set -o errexit

# Add build commands for front end
rm -rf public
npm install --prefix client && npm start --prefix client
cp -a client/build/. public/

#Build commands for back end
bundle install
bundle exec rake db:migrate
bundle exec rake db:seed 