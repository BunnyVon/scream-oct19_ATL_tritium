#!/bin/sh

if test "x$srcdir" = x ; then srcdir=`pwd`; fi 
. ../test_common.sh

set -e

export NC_TEST_AWS_DIR=`pwd`

rm -fr ./.aws
mkdir .aws
cat >.aws/config <<EOF
[default]
    aws_access_key_id=EXAMPLE_ACCESS_KEY
    aws_secret_access_key=EXAMPLE_SECRET_KEY
[ncar]
    aws_access_key_id=EXAMPLE_ACCESS_KEY
    aws_secret_access_key=EXAMPLE_SECRET_KEY
[unidata]
    aws_access_key_id=EXAMPLE_ACCESS_KEY

    aws_secret_access_key=EXAMPLE_SECRET_KEY
; comment1
    aws_region=us-west-1
;comment2
EOF

${execdir}/test_aws

rm -fr .aws

