#!/bin/bash

# -----------------------------------------------------------
# @desc localStack init scripts
# ホストからマウントすることで初期化処理が実行可能
# @see https://docs.localstack.cloud/references/init-hooks/#usage-example
# @note LOCALSTACK_SERVICESに対象のサービスを記載しないと動作しない。
# -----------------------------------------------------------


USER_BUCKET_NAME=${USER_BUCKET_NAME-user-icons}

awslocal s3 mb s3://"$USER_BUCKET_NAME"

echo "localstack executed!"
