#!/bin/bash
docker build -t cv-builder .
docker run --rm -v "$(pwd)":/data cv-builder
rm -f *.aux *.log *.out *.toc

