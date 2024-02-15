#!/bin/sh

set -ex
PROTOC_VENV=build/protoc-venv

python3 -mvenv $PROTOC_VENV
$PROTOC_VENV/bin/python3 -mpip install -U pip setuptools wheel grpcio-tools

$PROTOC_VENV/bin/python3 -mgrpc_tools.protoc \
  --grpc_python_out=src/ \
  --python_out=src/ \
  --pyi_out=src/ \
  -Iprotos \
  protos/buf/validate/expression.proto \
  protos/buf/validate/validate.proto \
  protos/buf/validate/priv/private.proto

# Delete the _pb2_grpc.py files, as they are empty and not needed (sigh protoc...)
find . -name \*_pb2_grpc.py -delete
