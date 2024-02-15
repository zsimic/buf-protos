#!/bin/sh

set -ex
PACKAGE_VENV=build/package

mkdir -p dist

python3 -mvenv $PACKAGE_VENV
$PACKAGE_VENV/bin/python3 -mpip install -U pip setuptools wheel
$PACKAGE_VENV/bin/python3 setup.py sdist -d dist
$PACKAGE_VENV/bin/pip wheel -w dist .
