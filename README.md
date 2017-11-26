# Базовый Docker образ с Python 3

[ ![Download](https://api.bintray.com/packages/javister/docker/javister%3Ajavister-docker-python3/images/download.svg) ](https://bintray.com/javister/docker/javister%3Ajavister-docker-python3/_latestVersion)

Данный образ основан на образе [javister-docker-base](https://github.com/javister/javister-docker-base) и содержит 
предустановленные Python 3 и pip3.

Для использования `pip` создана утилита `pip-install`, предназначенная для корректной работы с http proxy.
Её желательно использовать вместо `pip` при построении образов с приложениями.