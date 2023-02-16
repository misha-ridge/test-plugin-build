#!/usr/bin/env bash

go build -trimpath -buildvcs=false -buildmode=plugin -o a.so .
go build -trimpath -buildvcs=false -buildmode=plugin -o b.so .
diff -u <(hexdump -C a.so) <(hexdump -C b.so)
