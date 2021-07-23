#!/bin/bash

JAVA_OPTS=(
    '-Xms2000M'
    '-Xmx2000M'
    '-XX:+UnlockDiagnosticVMOptions'
    '-XX:+LogVMOutput'
    '-XX:+UnsyncloadClass'
    '-XX:LogFile=/var/nexus/log/jvm.log'
    '-XX:MaxDirectMemorySize=2000M'
    '-XX:-OmitStackTraceInFastThrow'
    '-Djava.io.tmpdir=/tmp/nexus'
    '-Djava.net.preferIPv4Stack=true'
    '-Djava.util.logging.config.file=etc/karaf/java.util.logging.properties'
    '-Dkaraf.home=.'
    '-Dkaraf.base=.'
    '-Dkaraf.etc=etc/karaf'
    '-Dkaraf.data=/var/nexus'
    '-Dkaraf.startLocalConsole=false'
    '-server'
    '-cp lib/boot/*'
)

set -o noglob

cd /opt/nexus-latest \
    && exec java ${JAVA_OPTS[*]} org.sonatype.nexus.karaf.NexusMain