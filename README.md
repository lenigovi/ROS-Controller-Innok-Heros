# ROS Controller Innok Heros

Description and kinematic control of Innok Heros in ROS environment.


## URDF Description
The mechanical description of robot joints mapped with actuators is saved as a [.world file](https://github.com/lenigovi/ROS-Innok-Heros-Controller/blob/main/Innok_Heros_Description/worlds/innok_heros.world) and ready to use. The [Dockerfile](https://github.com/lenigovi/ROS-Innok-Heros-Controller/blob/main/Dockerfile) contains environment setup with ROS Indigo.

![innok_heros](https://github.com/user-attachments/assets/f38a3aee-11e2-4a8a-b1dc-70073dc9c971)

![innok_heros_mechanical_components](https://github.com/user-attachments/assets/250cbe9b-8d5b-46b0-9cab-4643af16803e)

https://github.com/user-attachments/assets/b5473f47-8d80-4cb0-a7ed-7c1ce631c13d


## Controller


## Setup

On Ubuntu, ROS Indigo was pulled with:

    docker pull hacktohell/ros-indigo

Alternatively, the execution can be performed via [Docker Desktop](https://www.docker.com/products/docker-desktop).

The Dockerfile contents should be installed in the ros-indigo directory using the following command:

    docker build -t “ros-indigo:Dockerfile”

This will install some ROS Indigo libraries such as Rviz, Gazebo, RQT, and Innok Heros Description and Control. Furthermore [XMing](http://www.straightrunning.com/XmingNotes/) should be installed and started before moving forward with the next steps. On Ubuntu, enter the docker image with:

    docker run -it --env DISPLAY=host.docker.internal:0 ros_indigo bash

Launch the environment:

    roslaunch innok_heros_gazebo innok_heros_gazebo.launch



