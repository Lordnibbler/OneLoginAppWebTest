#!/bin/bash -xl
echo $DISPLAY
bundle install --path vendor/bundle
bundle exec cucumber -p staging --format json -o cucumber.json --tags @firefox_box
