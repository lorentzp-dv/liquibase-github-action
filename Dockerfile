FROM liquibase/liquibase:latest

COPY entry.sh /entry.sh
COPY ojdbc6.jar internal/lib
RUN rm -f internal/lib/ojdbc8.jar

ENTRYPOINT ["/entry.sh"]
