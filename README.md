# Финальная работа Linux для робототехников.

# Порядок выполнения проекта

   1. Придумайте концепцию робота: например, робот-пылесос. 
   2. Составьте схему подключения конкретных датчиков и исполнительных устройств к вычислителю робота на базе OC Linux. Например: LIDAR Velodyne VLP-16 подключается по 1Gbit Ethernet, контроллеры двигателей колёс ODrive — по CAN, IMU-датчик XSens MTI-1 — по SPI и так далее. 
   3. Определите библиотеки и пакеты ROS, которые необходимы для работы датчиков в OC Linux и ROS. Создайте скрипт, который установит все библиотеки и пакеты. 
   4. Добавьте скрипт, который настроит удалённый доступ по SSH. 
   5. Создайте репозиторий Git с ROS Workspace, в котором будет README.md с инструкцией по установке, запуску и другими важными действиями. Выведите в README.md структурную схему.
   6. Создайте ROS-пакет с LAUNCH-файлом, чтобы запустить ROS-узлы для работы с датчиками и исполнительными устройствами. Добавьте в LAUNCH-файл запуск по параметру rviz или rqt (rviz:=true, rqt:=true). 
   7. Подключите и проверьте работу одного из датчиков или исполнительных устройств. Это может быть встроенная веб-камера ноутбука, геймпад или джойстик, заряд батареи, мышка и клавиатура. Визуализируйте данные с этого устройства в rviz или rqt. 
   8. Создайте Dockerfile для сборки docker-образа со всеми необходимыми зависимостями (библиотеками и пакетами ROS, доступом по SSH). 
