 # Homework-13
 - Запустили контейнер
 - Сделали коммит образа контейнера
 - Познакомились с основными коммандами


  # Homework-14
  - Познакомились и разобрались в docker-machine, запустили экземпляр оного в gcloud, подняли там контэйнеры
  - Познакомились с docker build, создали свой образа
  - Отправили свой образ в dockerhub
  - Подключил ресурс docker в terraform (main.tf)
  - Сделал два плэйбука docker-deploy для установки докера и пререквезитов,
    container-deploy для запуска контэйнера на удаленной машине
  - Сделал шаблон пакера для создания образа с предустановленным docker

  # Homework-15
  - разнесли приложение на микросервисы - 4 контейнера (база, камменты, посты, интерфейс)
  - создали отдльную сеть, присвоили сетевые алиасы, передали переменные окружения *
  - оптимизировали образ ui собрав его на alpine и установив минимум пакетов, получилось 210Мб *
  - добавили volume и примонтировали его в базе *

  # Homework-16
  - Разобрали 3 драйвера сети в докере
  - Поделили лэндскэйп приложения на 2 сети (фронт и бэк) и Запустили
  - Написали compose файл, который поднимает все сервисы приложения
  - Написали compose overwrite файл, прокинули файлы исходников
  - Ответ на вопрос: базовое имя проекта в compose наследуется от имени папки, можно задать через параметр при сборке проекта ```docker-compose -p foo```, а так же через переменные окружения ```COMPOSE_PROJECT_NAME```

  # Homework-17
  - Установили gitlab omnibus в контейнере
  - Создали и разместили исходный код проекта
  - Настроили минимальный pipeline
  - добавили runner

  # Homework-18
  - Доработали pipeline, добавили environments
  - Настроили gitlab registery
  - подняли сервер для каждой новой ветки и задеплоили туда приложение

  # Homework-19
  - Запустили prometheus
  - Добавили в него healthchek из нашего приложения
  - Добавили метрики экспортера монгиъ
  - Добавили метрики из экспортера BlackBox

  # Homework-20
  - Добавили в стек мониторинга графану
  - Подключили коробочные дашборды
  - Создали свои дашборды
  - Сняли метрики с докер-хоста
  - Настроили алертиг в слак и на почту
