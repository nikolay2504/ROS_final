# Базовый образ рос берётся за основу
FROM osrf/ros:humble-desktop

# Задаём переменную окружения, чтобы пользователь не участвовал в установке (выбор клавиатуры и прочее)
ENV DEBIAN_FRONTEND=noninteractive

# Установка необходимых пакетов
RUN apt update && apt install -y \
xpra \
xterm \
net-tools \
netcat \
nano \
openssh-server \
rviz \
v4l-utils \
ros-$ROS_DISTRO-turtlebot3* \
ros-humble-rmw-cyclonedds-cpp

# Добавим настройки переменных окружения в .bashrc
RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.bashrc \
&& echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc \
&& echo "export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp" >> ~/.bashrc \
&& echo "export TURTLEBOT3_MODEL=waffle" >> ~/.bashrc


# Cкопируем файл pakety_ROS.bash и SSH.bash 
COPY pakety_ROS.bash /home/test/
COPY SSH.bash ./home/test/

# Зададим стартовую команду для контейнера
CMD ["bash"]
