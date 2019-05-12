#!/bin/bash
# to update and push website to s3
#build website
bundle exec jekyll build
#pushes to s3 per .yml file
s3_website push
