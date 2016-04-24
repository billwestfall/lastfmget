#!/bin/bash

    curl "http://ws.audioscrobbler.com/2.0/?method=tag.gettopartists&tag=dark%20ambient&api_key=<YOUR LASTFM API KEY>&format=xml" > artist_tag.xml

    sleep 5

    grep name artist_tag.xml | tr -d '\t' |  sed 's/\(.*\)>\(.*\)<\(.*\)/\2/' >> artist_tag.txt 

    sleep 5

    wc -l artist_tag.txt

