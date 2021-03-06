set -e
if [ -z $1 ]; then
  echo "${0}" '${ITER}'
  exit -1
fi
ITER=$1
source $(dirname $0)/klee-env.sh

prepass -assign-id -insert-tag-loc -tag-cfg=tag.tbl ${BASE_BC} ${PREPASS_BC}
cp ${PREPASS_BC} ${RUN_BC}
rm -rf ${KLEE_RECORD_OUT_DIR}
klee -save-final-module-path=${FREQ_BC} -solver-backend=stp -call-solver=false \
     -output-stats=false -output-istats=false -use-forked-solver=false \
     -output-source=false -write-kqueries -write-paths --libc=uclibc \
     --posix-runtime -env-file=env \
     -pathrec-entry-point="__klee_posix_wrapped_main" -ignore-posix-path=true \
     -use-independent-solver=false -oob-check=false -allocate-determ \
     -output-dir=${KLEE_RECORD_OUT_DIR} \
     ${RUN_BC} -posix-debug -sock-handler memcached_1.5.13 -t 1 -p 11212 -l 127.0.0.1
# -debug-schedule
cp ${FREQ_BC} ${PREPASS_BC} ${DATARECCFG} ${KLEE_RECORD_OUT_DIR} 
