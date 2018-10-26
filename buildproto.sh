#!/bin/bash

set -e

(which grpc_tools_node_protoc && which protoc-gen-ts) > /dev/null  \
    || (echo 'Build should be done via "npm install && npm run build".' && exit 1);

JS_OUT_DIR=dist/generated/
TS_OUT_DIR=src/generated/

rm -rf ${TS_OUT_DIR} ${JS_OUT_DIR} && mkdir -p ${TS_OUT_DIR} ${JS_OUT_DIR}

grpc_tools_node_protoc \
    --plugin=protoc-gen-ts=$(which protoc-gen-ts) \
    --js_out=import_style=commonjs,binary:${JS_OUT_DIR} \
    --ts_out=${TS_OUT_DIR} \
    --grpc_out=${JS_OUT_DIR} \
    --proto_path=proto/ \
    proto/main.proto proto/hiss.proto
