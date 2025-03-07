FLYWAY_VERSION=11.3.4
FLYWAY_HOME=/opt/flyway
FLYWAY_TARGET=${FLYWAY_HOME}/flyway.tar.gz

mkdir -p ${FLYWAY_HOME}
curl -fL "https://download.red-gate.com/maven/release/com/redgate/flyway/flyway-commandline/${FLYWAY_VERSION}/flyway-commandline-${FLYWAY_VERSION}-linux-x64.tar.gz" --output ${FLYWAY_TARGET}
tar xzf ${FLYWAY_TARGET} -C ${FLYWAY_HOME} --strip-components=1
rm ${FLYWAY_TARGET}
echo 'export PATH=/opt/flyway:$PATH' >> ~/.bashrc
flyway --version