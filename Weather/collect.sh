#!/bin/bash

station_ID=51157
start_year=2018
end_year=2024
path="weather_data"

for year in $(seq $start_year $end_year); do
    for month in $(seq 1 12); do
        wget -P ${path} --content-disposition "https://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=${station_ID}&Year=${year}&Month=${month}&Day=14&timeframe=1&submit=Download+Data"
    done
done
