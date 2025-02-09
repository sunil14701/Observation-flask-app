 Install docker in your local and try out docker compose.

## Stack version: 
8.17.1

## 1. Docker Compose Commands
Run the services defined in your `docker-compose.yml`:
```bash
docker-compose build --no-cache
docker-compose up 
docker-compose down
```

## 2. Head to kibana URL to see telemetry data
http://localhost:5601/app/apm/services/flask-app/
<br>
<br>
<p align="center">
  <img src="./static/Hpipe/apm_service.PNG" width="800" alt=" postgress_span">
</p>



## 3. View the Flame Graph (Trace a Specific Application)
### To trace a particular application route: Head to flask-app -> transactions -> your app route
### a. Navigate to the Flask App -> Transactions -> Your app route.
- Here is an example flame graph for the route. We used auto-instrumentation for Flask and the requests library to capture traces for a specific endpoint.
<p align="center">
  <img src="static/1_main_timeline.PNG" alt="flame graph" width="800">
</p>


<br>
<br> 

### b. The image below displays all the metadata for the request, showing the telemetry data captured during the request's creation.
<p align="center">
  <img src="static/main_meta.PNG" alt="main_meta" width="800">
</p>

<br>
<br> 

### c. Below is the telemetry data for the first call to another microservice.(In this is its just curl request to google)
<p align="center">
  <img src="static/span_details.PNG" alt="span_details" width="800">
</p>

<br> 
<br>

### d. Below is the telemetry data for the second call to another microservice, which is a cURL request for the weather forecast.
<p align="center">
  <img src="static/span_details2.PNG" width="800" alt="span_details2">
</p>

<br>
<br>

## 4. View the Flame Graph for error produced
<p align="center">
  <img src="./static/Hpipe/hpipe_failed_trans.PNG" width="800" alt="hpipe_failed_trans">
</p>

<br>
<br>
<p align="center">
  <img src="./static/Hpipe/hpipe_trace_back.PNG" width="800" alt="hpipe_trace_back">
</p>

<br>
<br>

## 5. View the Flame Graph for tracing queries
<p align="center">
  <img src="./static/Hpipe/postgress_trace.PNG" width="800" alt="postgress_trace">
</p>

<br>
<br>
<p align="center">
  <img src="./static/Hpipe/postgress_span.PNG" width="800" alt=" postgress_span">
</p>

<br>
<br>







