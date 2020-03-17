#!/bin/bash

while : 

do 

curl -s "https://thevirustracker.com/free-api?countryTotal=$1" | ./jq -j '.countrydata[0] | .info.title, ".\nTotal: ", .total_cases, "\tDeaths: ", .total_deaths, "\tRecovered: ", .total_recovered'

done
