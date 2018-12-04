#!/usr/bin/env bash

#
# Install all mentioned tools in TOOLTOINSALL in Debian or OS X
#

TOOLSTOINTALL=(autojump, exa);

for tool in "${TOOLSTOINTALL[@]}"
do

    if  [[ "$OSTYPE" == darwin17.5.0 ]]; then
        echo "-----install $tool";
        brew install $tool;
    else
        echo "-----install $tool";
        #apt-get install $tool;
     fi
done
