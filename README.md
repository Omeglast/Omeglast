# Omeglast

## Installation

Copy the `.env.dist` file into `.env` and edit your preferences.

## Queries

```sql
SELECT
  $__time(time),
  value AS temperature
FROM
  ts
WHERE
  sensor = 'sensor/weather/paris/temperature'
```

```sql
SELECT
  $__time(time),
  value AS humidity
FROM
  ts
WHERE
  sensor = 'sensor/weather/paris/humidity'
```
