# подключаю переменные среды от композера
include ./docker/.env.example
export $(shell sed 's/=.*//' ./docker/.env.example)

# проверка наличия переменной с именем пользователя
ifeq ($(USER_NAME),)
  $(error USER_NAME is not set)
endif

build_src: build_ui build_comment build_post
build_ui:
	cd src/ui && bash docker_build.sh
build_comment:
	cd src/comment && bash docker_build.sh
build_post:
	cd src/post-py && bash docker_build.sh
build_prometheus:
	cd monitoring/prometheus && docker build -t $(USER_NAME)/prometheus .
build_alertmgr:
	cd monitoring/alertmanager && docker build -t $(USER_NAME)/prometheus .
