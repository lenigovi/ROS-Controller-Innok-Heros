# Use the official ROS Indigo image as the base
FROM ros:indigo

# Set the working directory
WORKDIR /catkin_ws

# Install required packages
RUN apt-get update && apt-get install -y \
    ros-indigo-innok-heros-description \
    ros-indigo-innok-heros-gazebo \
    ros-indigo-rviz \
    ros-indigo-gazebo-ros \
    ros-indigo-rqt \
    ros-indigo-innok-heros-control \
    nano \
    wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create directories for Gazebo models
RUN mkdir -p ~/.gazebo/models/sun ~/.gazebo/models/ground_plane

# Download models from the specified URLs
RUN wget -r -np -nH --cut-dirs=3 -R index.html http://models.gazebosim.org/sun/ -P ~/.gazebo/models/sun \
    && wget -r -np -nH --cut-dirs=3 -R index.html http://models.gazebosim.org/ground_plane/ -P ~/.gazebo/models/ground_plane

# Set up the environment
RUN /bin/bash -c "source /opt/ros/indigo/setup.bash"

RUN /bin/bash -c "sudo apt-get update"

RUN /bin/bash -c "export DISPLAY=host.docker.internal:0"

# Source the ROS setup script
CMD ["bash", "-c", "source /opt/ros/indigo/setup.bash && exec bash"]
