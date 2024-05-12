# Spirit-Moon_microservices
Spirit-Moon microservices repository

# HW docker-2
Произведено знакомство с docker
Создан, настроен и запущен для сайта reddit
С помощью docker-machine запущен образ на YC cloud

# HW docker-3
В каталоге scr находится код компонентов приложения.
Для каждого компонента создан отдельный Dockerfile и собран Docker-образ.
После этого приложение протестировано.
Также были внесены улучшения в образ UI-компонента.
Для контейнера с MongoDB создан volume reddit_db для хранения базы данных.
Работоспособность приложения проверена.

# HW docker-4
Базовое имя задается с помощью флага -p
Контейнеры были запущены с различными сетевыми настройками: none, host и bridge.
Контейнеры были запущены с сетевыми алиасами.
Запущены контейнеры в различных сетях.
Docker Compose был установлен, и был создан файл docker-compose.yml, после чего контейнеры были запущены.пп
Файл docker-compose был изменен для использования нескольких сетей.
Задание со звездочкой: в контейнеры были добавлены тома с исходным кодом компонентов для возможности внесения изменений без пересборки образа. Кроме того, были добавлены команды для запуска puma в режиме отладки с двумя воркерами.

# HW gitlab-ci-1
На GitLab развернута группа "homework" с проектом "example".
Создан файл .gitlab-ci.yml.
Подключен внешний раннер.
Добавлены файлы проекта "reddit", тесты в пайплайне и динамические окружения.

# HW monitoring-1
Создан Dockerfile для Prometheus и файл конфигурации prometheus.yml в папке monitoring/prometheus.
Собран образ prometheus
Затем были пересобраны образы каждого сервиса с помощью скриптов docker_build.sh.
В основной docker/docker-compose.yml файл был добавлен сервис Prometheus.
Тестирование таргетов и метрик для всех сервисов было выполнено успешно.
Экспортер node-exporter был добавлен в основной docker-compose.yml, и prometheus.yml был отредактирован соответственно.
Пересобран образ Prometheus.
Затем сервисы были пересозданы, и эндпоинты с метриками были протестированы.
Созданные образы были отправлены в Docker Hub:
- https://hub.docker.com/r/romanovshad/comment
- https://hub.docker.com/r/romanovshad/prometheus
- https://hub.docker.com/r/romanovshad/post
- https://hub.docker.com/r/romanovshad/ui
