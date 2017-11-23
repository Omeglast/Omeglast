# Omeglast

## Installation

Copy the `.env.dist` file into `.env` and edit your preferences.


## Add current weather client

You can add a client that will push your current weather by adding the following lines into your docker-compose file :

```yaml
  weather-paris:
    image: jeckel/omeglast-weather-client:latest
    depends_on:
      - mqtt-server
    environment:
      - MQTT_HOST=mqtt-server
      - MQTT_PORT=1883
      - WEATHER_LOCATION=Paris, FR
      - PUSH_INTERVAL=${WEATHER_REFRESH_INTERVAL}
      - TEMPERATURE_TOPIC=sensor/weather/paris/temperature
      - HUMIDITY_TOPIC=sensor/weather/paris/humidity
```

## Grafana Queries

```sql
SELECT
  time,
  value,
  'Paris' AS metric
FROM
  ts
WHERE
  sensor = 'sensor/weather/paris/temperature'
ORDER BY time ASC
```

```sql
SELECT
  time,
  value,
  'Santiago' AS metric
FROM
  ts
WHERE
  sensor = 'sensor/weather/santiago/temperature'
ORDER BY time ASC
```
