#!/bin/bash

# Hardcoded city data: City, Latitude, Longitude, Temperature (°C)
CITIES=(
    "New York,40.7128,-74.0060,15"
    "London,51.5074,-0.1278,10"
    "Tokyo,35.6895,139.6917,20"
    "Paris,48.8566,2.3522,12"
    "Berlin,52.5200,13.4050,8"
    "Dubai,25.276987,55.296249,35"
    "Los Angeles,34.0522,-118.2437,22"
    "Beijing,39.9042,116.4074,18"
    "Moscow,55.7558,37.6173,5"
    "Rome,41.9028,12.4964,14"
    "Madrid,40.4168,-3.7038,16"
    "Toronto,43.651070,-79.347015,7"
    "Mumbai,19.0760,72.8777,30"
    "São Paulo,-23.5505,-46.6333,25"
    "Singapore,1.3521,103.8198,32"
    "Istanbul,41.0082,28.9784,11"
    "Sydney,-33.8688,151.2093,23"
    "Bangkok,13.7563,100.5018,29"
    "Seoul,37.5665,126.9780,9"
    "Mexico City,19.4326,-99.1332,21"
    "Cairo,30.0444,31.2357,28"
    "Buenos Aires,-34.6037,-58.3816,19"
    "Jakarta,-6.2088,106.8456,31"
    "Lagos,6.5244,3.3792,27"
    "Johannesburg,-26.2041,28.0473,17"
)

# Function to convert Celsius to Fahrenheit
convert_to_fahrenheit() {
    echo "scale=2; ($1 * 9/5) + 32" | bc
}

# Print header
echo "City Name         | Latitude  | Longitude | Temp (°C) | Temp (°F)"
echo "-------------------------------------------------------------"

# Loop through hardcoded data
for CITY_DATA in "${CITIES[@]}"; do
    IFS=',' read -r CITY LAT LON TEMP_C <<< "$CITY_DATA"
    TEMP_F=$(convert_to_fahrenheit "$TEMP_C")

    printf "%-15s | %-8s | %-9s | %6s°C | %6s°F\n" "$CITY" "$LAT" "$LON" "$TEMP_C" "$TEMP_F"
done

echo "-------------------------------------------------------------"
echo "Weather data displayed successfully!"

