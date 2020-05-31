```shell
export AWS_PROFILE="HE_AWS_TF_APP_ITF_ENV_1"; \
terraform_git \
  init \
  -backend-config="bucket=he-aws-tf-app-itf-he-aws-tf-mod-aws-abs-env-1" \
  -backend-config="key=he_aws_tf_app_itf_abs_env_1_bug_001_work.tfstate" \
  -input=false \
  -no-color \
  -upgrade \
  -var="he_aws_tf_app_rgn_eu=[\"eu\", \"west\", \"2\", ]" \
  -var="he_aws_tf_app_rgn_us=[\"us\", \"east\", \"1\", ]" \
  -var-file="./he_aws_tf_mod_he_aws_tf_app_itf_cnf.tfvars"
```

```shell
export AWS_PROFILE="HE_AWS_TF_APP_ITF_ENV_1"; \
terraform_git \
  workspace \
  new \
  he_aws_tf_app_itf_env_1_bug_001_work \
  -no-color
```

```shell
export AWS_PROFILE="HE_AWS_TF_APP_ITF_ENV_1"; \
terraform_git \
  workspace \
  select \
  he_aws_tf_app_itf_env_1_bug_001_work \
  -no-color
```

```shell
export AWS_PROFILE="HE_AWS_TF_APP_ITF_ENV_1"; \
terraform_git \
  plan \
  -input=false \
  -no-color \
  -out="he_aws_tf_app_itf_abs_env_1_bug_001_work.tfout" \
  -var="he_aws_tf_app_rgn_eu=[\"eu\", \"west\", \"2\", ]" \
  -var="he_aws_tf_app_rgn_us=[\"us\", \"east\", \"1\", ]" \
  -var-file="./he_aws_tf_mod_he_aws_tf_app_itf_cnf.tfvars"
```
