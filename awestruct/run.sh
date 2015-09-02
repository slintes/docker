#!/bin/bash

#docker run -d -it -v ~/dev/lt_website/:/home/awestruct/lt/ -p 4242:4242 slintes/awestruct bash --login -c 'cd lt && awestruct -s'
docker run -rm -it -v ~/dev/lt_website/:/home/awestruct/lt/ -p 4242:4242 slintes/awestruct
