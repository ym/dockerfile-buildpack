#!/bin/bash -x
set -e

GOLANG_VERSION=${GOLANG_VERSION:-1.4.2}
PROFILE_PATH=/etc/profile.d/golang.sh

yum install -y curl tar

curl -sSL https://storage.googleapis.com/golang/go$GOLANG_VERSION.linux-amd64.tar.gz \
    | tar -v -C /usr/local -xz


mkdir -p /go/src /go/bin
chmod -R 777 /go

cat << EOF > $PROFILE_PATH
export PATH=/usr/local/go/bin:/go/bin:\$PATH
export GOPATH=/go
EOF

source $PROFILE_PATH
