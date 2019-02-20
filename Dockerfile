FROM tomcat:8
COPY  ./gameoflife-web/target/*.war $CATALINA_HOME/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
