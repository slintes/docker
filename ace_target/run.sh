#!/bin/bash
docker run --volumes-from sharedData --name ace_target --link ace:ace -it slintes/ace_target