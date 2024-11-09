FROM apache/hive:3.1.3
ADD https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.500/aws-java-sdk-bundle-1.11.500.jar \
    https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.1.4/hadoop-aws-3.1.4.jar /opt/hive/lib/
COPY metastore-site.xml hive-site.xml /opt/hive/conf/
COPY --chmod=0755 init.sh /
ENV SERVICE_NAME=metastore DB_DRIVER=postgres
ENTRYPOINT []
CMD ["/bin/bash", "-c", "while true; do sleep 1; done"]