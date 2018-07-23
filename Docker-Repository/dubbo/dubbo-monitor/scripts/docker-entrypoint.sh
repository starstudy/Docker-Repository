#!/bin/bash -eux

mkdir -p ${WORKING_DIR}/monitor/charts ${WORKING_DIR}/monitor/statistics ${WORKING_DIR}/logs ${WORKING_DIR}/conf
tar -zxvf ${WORKING_DIR}/${DUBBO_ASSEMBLY_NAME}-assembly.tar.gz -C ${WORKING_DIR}/

#cp ${WORKING_DIR}/conf/dubbo.properties ${WORKING_DIR}/${DUBBO_ASSEMBLY_NAME}/conf/
touch ${WORKING_DIR}/logs/dubbo-monitor-simple.log ${WORKING_DIR}/logs/stdout.log

${WORKING_DIR}/${DUBBO_ASSEMBLY_NAME}/bin/start.sh && tail -f ${WORKING_DIR}/logs/stdout.log
