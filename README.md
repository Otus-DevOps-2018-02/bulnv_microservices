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
