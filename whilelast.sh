#!/bin/bash 

         COUNTER=0

         while [  $COUNTER -lt 189 ]; do

             echo The counter is $COUNTER

    curl "http://ws.audioscrobbler.com/2.0/?method=library.getartists&api_key=<LASTFMAPIKEY>&user=<LASTFMUSER>&page=$COUNTER" > list.xml

    sleep 5

    grep name list.xml | tr -d '\t' |  sed 's/\(.*\)>\(.*\)<\(.*\)/\2/' >> lastfmartists.txt 

    sleep 5

    wc -l lastfmartists.txt

             let COUNTER=COUNTER+1 

         done

