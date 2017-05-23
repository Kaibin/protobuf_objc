#!/bin/bash
SRC_DIR=./src
DST_DIR=./target
PROTOC_DIR=~/Documents/DevTools/protobuf/src
$PROTOC_DIR/protoc --proto_path=$SRC_DIR --objc_out=$DST_DIR $SRC_DIR/person.proto


