set -ex

OOZIE_VERSION="4.2.0.2.5.0.0-1245"
HADOOP_VERSION="2.7.3.2.5.0.0-1245"
HIVE_VERSION="1.2.1000.2.5.0.0-1245"
PIG_VERSION="0.16.0"
SPARK_VERSION="1.6.1.2.5.0.0-1245"
HBASE_VERSION="1.1.2.2.5.0.0-1245"
TEZ_VERSION="0.7.0.2.5.0.0-1245"
ZOOKEEPER_VERSION="3.4.6.2.5.0.0-1245"

ant -f build.xml -Dhadoopversion=210 -Dhadoop.version.full=$HADOOP_VERSION -Dhadoop.version=$HADOOP_VERSION -Dhbase.version=$HBASE_VERSION -Dzookeeper.version=$ZOOKEEPER_VERSION package jar "$@"
mvn install:install-file -Dfile=build/sqoop-1.4.6.jar -DgroupId=org.apache.sqoop -DartifactId=sqoop -Dversion=1.4.6 -Dpackaging=jar
