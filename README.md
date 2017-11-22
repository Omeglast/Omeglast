# Omeglast

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
