FROM microsoft/mssql-server-linux:2017-CU12
ENV SA_PASSWORD Change_me!
ENV ACCEPT_EULA=Y

COPY . /usr/src/app
# Grant permissions for the import-data script to be executable
RUN chmod +x /usr/src/app/config.sh
RUN chmod +x /usr/src/app/first_run.sh
RUN usr/src/app/first_run.sh
EXPOSE 1433

CMD /bin/bash /usr/src/app/entrypoint.sh
