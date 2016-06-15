postgres-s3-backup
==================

This repository contains a shell script for backing up a PostgreSQL database
and then uploading the dump to an S3 bucket, as well as a Dockerfile for easier
handling of PostgreSQL dependencies.

Usage
-----

```shell
docker run --rm \
  -e AWS_ACCESS_KEY_ID=replace-this \
  -e AWS_SECRET_ACCESS_KEY=replace-this \
  -e S3_URL=s3://bucket-name/path \
  -e DATABASE_URL=postgres://user:password@host:port/db \
  -e SNITCH_URL=optional-url-to-call-on-success \
  hypothesis/postgres-s3-backup
```
