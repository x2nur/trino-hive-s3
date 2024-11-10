FROM apache/hive:3.1.3

USER root
ADD --chown=root:staff --chmod=0644 \
    https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.271/aws-java-sdk-bundle-1.11.271.jar \
    https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.1.0/hadoop-aws-3.1.0.jar /opt/hive/lib/

COPY --chown=root:staff --chmod=0644 metastore-site.xml hive-site.xml /opt/hive/conf/
COPY --chmod=0755 init.sh /
ENV SERVICE_NAME=metastore DB_DRIVER=postgres
ENTRYPOINT []

USER hive
CMD ["/bin/bash", "-c", "while true; do sleep 1; done"]