 install docker in your local and try out docker compose.


## Docker Compose Commands
Run the services defined in your `docker-compose.yml`:
```bash
docker-compose build --no-cache
docker-compose up 
docker-compose down

## head to kibana URL to see telemetry data
http://localhost:5601/app/apm/services/flask-app/

## to see the flame graph. head to flask-app -> transactions -> your app route
![flame graph](./static/timeline.jpg)

![alt text](https://raw.githubusercontent.com/sunil14701/Observation-flask-app/master/static/timeline.jpg)

![image](https://github.com/user-attachments/assets/a8de98e5-93d6-4a32-8b30-c444eb213dee)





