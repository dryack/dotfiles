#!/usr/bin/env bash
# TOOD: Add target to .ssh/config
TARGET=$1
infocmp screen-256color | ssh ${TARGET} "cat - > screen-256color"
ssh ${TARGET} "tic screen-256color && rm screen-256color"
ssh -A ${TARGET}
