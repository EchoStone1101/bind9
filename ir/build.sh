#!/bin/bash

# In bind/ir

mkdir dns/rdata -p
mkdir ns -p
mkdir isc -p
mkdir isccfg -p
mkdir isccc -p
mkdir named -p

compile_and_move() {
    local file=$1
    local dir=$2
    local filename=$(basename "$file" .c)
    
    # List of skipped filenames
    local skipped_files=("dnstap" "geoip2" "gssapi_link" "gen" "geoip")
    
    # Check if the file is in the skipped list
    if [[ " ${skipped_files[@]} " =~ " ${filename} " ]]; then
        echo "Skipping ${filename}"
        return
    fi
    
    clang-15 -c -emit-llvm -include ../config.h \
        -DNAMED_PLUGINDIR=\"BIND\" \
        -DNAMED_SYSCONFDIR=\"sys\" \
        -DNAMED_LOCALSTATEDIR=\"local\" \
        -I/usr/include/libxml2 \
        -I.. \
        -I../lib/isc/include \
        -I../lib/isccc/include \
        -I../lib/isccfg/include \
        -I../lib/dns/include \
        -I../lib/ns/include \
        -I../bin/named/include \
        -fno-inline-functions -fno-jump-tables -fno-vectorize -fno-lto -O1 \
        -Xclang -no-opaque-pointers \
        -mllvm --relocation-model=static \
        -fno-builtin-function=pthread_mutex_lock,pthread_mutex_unlock,pthread_mutex_trylock,pthread_rwlock_rdlock,pthread_rwlock_wrlock,pthread_rwlock_unlock,atomic_load_acquire,pthread_rwlock_tryrdlock,pthread_rwlock_trywrlock,atomic_store_release \
        ${file}
    if [ -f ${filename}.bc ]
    then
        mv ${filename}.bc ./${dir}/${filename}.bc
        echo "${filename} complete"
    else
        echo "${filename} error"
    fi
}

for file in ../lib/dns/*.c; do
    compile_and_move "$file" "dns"
done

for file in ../lib/isc/*.c; do
    compile_and_move "$file" "isc"
done

for file in ../lib/isccc/*.c; do
    compile_and_move "$file" "isccc"
done

for file in ../lib/isccfg/*.c; do
    compile_and_move "$file" "isccfg"
done

# for file in ../lib/dns/rdata/generic/*.c; do
#     compile_and_move "$file" "dns/rdata"
# done

# for file in ../lib/dns/rdata/in_1/*.c; do
#     compile_and_move "$file" "dns/rdata"
# done

for file in ../lib/ns/*.c; do
    compile_and_move "$file" "ns"
done

for file in ../bin/named/*.c; do
    compile_and_move "$file" "named"
done
   
