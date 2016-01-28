#!/bin/bash

digital-collections -u $1 | \
  jq  '[.[] | {uuid: .uuid, title: .title, imageLink: .imageLinks.imageLink}]' > \
  data/$1.json