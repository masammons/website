#!/bin/bash
# to update and push website to s3
#build website
bundle exec jekyll build
#sets java to 1.8
jenv shell 1.8
#pushes to s3 per .yml file
s3_website push
