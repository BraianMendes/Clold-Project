# Hackaton Manuel 2019 - Clold Project

## About 

Mobile application using ALTU artificial intelligence, integrated into an embedded device. Designed to track a senior person, communicate with others via SMS and calls, play music, and if necessary perform actions according to data collected from the hardware. It uses Speach to Text and Text to Speach technologies in the application.

![N\|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)

![Clold apresentation.](.gitbook/assets/img_4074.JPG)

Powered by ALTU artificial intelligence from Smarkio company. 

The project was a participation in the Hackaton Manuel competition, in which it and the team won second place.

![Hackaton Manuel panel.](.gitbook/assets/img_3939.JPG)

## Build with

### Clold App

* Flutter framework 1.9
* Dart language 2.6
* AWS AI StT and TtS integration
* ALTU AI integration

### Clold Server

* MySQL database
* Python language 3.8

### Clold Hardware

* Arduino sensors
* MQTT protocol

## Meet our App in Flutter!

![Login view from the app.](.gitbook/assets/manuel.jpg)

Clold App has login screen with user registration, being possible via QR Code facilitate to link accounts between users and friends. Inside the app you can talk and through Amazon's StT and TtS technology integrated with ALTU artificial intelligence perform various actions such as chatting with Manuel artificial intelligence, checking current personal health data, environment data, communicating with other friends, sending SMS, listen to music and emergency actions.

Clold project was developed as a predecessor of artificial intelligence Manuel, product with Smarkio company rights.

### Using Python on the server with MathPI help

Inside the "my\_flash\_app" folder, just run the following commands:

By default, port 5000 will be exposed from the local address where we will consume the AWS instance:

```bash
export FLASK_APP=extract_DB
flask run
```

NOTE: In the folder my\_flash\_app / just execute the following commands before running flusk:

```bash
python3 -m venv venv
source venv/bin/activate
```

Check in the browser to certify the result of queries made in MySQL:

```bash
127.0.0.1:5000
```

## About the Team

![The Team and the embedded project](.gitbook/assets/img_4070.JPG)

* Pedro Etelvino
* Guilherme S. Borges
* Brian Mendes
* Matheus 
* Milena Oliveira

**Free Software, Hell Yeah! IOT on the open-source world !!!!!**

