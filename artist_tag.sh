#!/bin/bash

    curl "http://ws.audioscrobbler.com/2.0/?method=tag.gettopartists&tag=$1&page=$2&api_key=<LAST FM API KEY>&format=xml" > $1$2.xml

    sleep 5

    grep name $1$2.xml | tr -d '\t' |  sed 's/\(.*\)>\(.*\)<\(.*\)/\2/' >> $1$2.txt 

    sleep 5

    wc -l $1$2.txt
