# Weekend Challenge 1: FAAST - Architect badge Test

###Introduction

This challenge followed after our work on the Boris
Bikes project. We had to design a simple underground train system called FAAST (Fast and
Accessible Super Tube) that had the following features.


*Trains will travel from station to station.
*There will be a number of trains inside the system.
*Inside of a station, when the train stops, passengers will alight and enter the carriages of the train.
*A Passenger will touch in at the station and touch out at the destination station.
*Each coach of a train can hold up to 40 passengers.
*Each train is made of a number of coaches.

###Planning

With these paramaters in mind, I identified and planned to write four classes with the responisbilites listed below.

###Class - Train

Responsibilites             | Collaborators
----------------------------|------------------
Has x amount of carriages   |
Can arrive/depart at station| Station

### Class - Carriages
Responsibilites     | Collaborators
--------------------|------------------------
Has capacity        |
Can hold passengers | Passengers

### Class - Passenger 
Responisibilites        |Collaborators
------------------------|------------------
Touch in/out of station |Station
Board/Alight Carriage   |Carriage

###Class - Station      
Responsibilites         | Collaborators
------------------------|------------------
Hold Trains             |Trains
Hold Passsengers        |Passengers

