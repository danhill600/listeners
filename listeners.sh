#!/bin/sh

netstat -anp 2> /dev/null | grep :8000 | grep ESTABLISHED | cut -c45- | cut -d: -f1
