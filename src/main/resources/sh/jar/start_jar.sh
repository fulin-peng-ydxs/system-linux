#!/bin/bash
nohup /opt/jdk1.8.0_261/bin/java -jar ${1} --server.port=${2} /dev/null 2>&1 &
