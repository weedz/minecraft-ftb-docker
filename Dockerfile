FROM docker.io/eclipse-temurin:19-jre

# Direwolf20 1.19:
#   - modpack id: 101
#   - version id: 2336

COPY serverinstall /app/serverinstall
WORKDIR /app

# ARG MOD_ID
# ARG VERSION_ID

#ENV MOD_ID=${MOD_ID}
#ENV VERSION_ID=${VERSION_ID}

#RUN echo "mod_id: $MOD_ID"

RUN chmod +x ./serverinstall
#RUN ./serverinstall $MOD_ID $VERSION_ID --nojava --auto
# RUN chmod +x /app/start.sh
# RUN echo "eula=true" > eula.txt

#RUN ./serverinstall --help

#RUN cat ./start.sh

#RUN rm serverinstall


EXPOSE 25565

RUN ls -la /app
RUN ls -la

COPY init.sh /app/init.sh
RUN chmod +x init.sh

ENTRYPOINT ["/app/init.sh"]
