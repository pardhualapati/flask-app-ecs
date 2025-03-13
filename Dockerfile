#1. From the Base Image (OS)

FROM python:3.9-slim

#2. COPY SOURCE CODE TO CONTAINER
 
WORKDIR  /app

# 3. Copy src code to container

COPY . .

#4. Run the Build command to install the dependencies

RUN pip3 install -r requirements.txt


#5. EXPOSE PORT 80

EXPOSE 80


# 6. Serve the app to keep it running.

CMD ["python","run.py"]
