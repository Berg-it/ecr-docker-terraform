FROM java:8 

ENV APP_DIR /ecs-example
COPY ./docker-entrypoint.sh ${APP_DIR}/docker-entrypoint.sh
COPY . ${APP_DIR}
WORKDIR ${APP_DIR} 

RUN chmod 777 -R ${APP_DIR}

RUN javac Hello.java
RUN javac Hello2.java  
#CMD ["java", "Hello"]
ENTRYPOINT ${APP_DIR}/docker-entrypoint.sh