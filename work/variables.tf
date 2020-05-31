# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_tf_app_rgn_eu

variable "he_aws_tf_app_rgn_eu" {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "he_aws_tf_app_rgn_eu"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = list(string)

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_tf_app_rgn_us

variable "he_aws_tf_app_rgn_us" {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "he_aws_tf_app_rgn_us"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = list(string)

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_tf_mod

variable "he_aws_tf_mod" {

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = object(
    {
      he_aws = object(
        {
          he_aws_tf_app = object(
            {
              app = object(
                {
                  app     = list(string)
                  app_env = list(string)
                  app_ver = list(string)
                }
              )
              app_pck = object(
                {
                  app_pck          = list(string)
                  app_pck_attr     = list(string)
                  app_pck_mod      = list(string)
                  app_pck_mod_attr = list(string)
                }
              )
              app_pck_fmt = object(
                {
                  app_pck_lbl_sep = string
                  app_pck_pth_sep = string
                }
              )
            }
          )
          he_aws_tf_app_itf = object(
            {
              he_aws_tf_mod_amz_r53_zne = object(
                {
                  he_aws_tf_mod_plt_dns = object(
                    {
                      aws_route53_zone = object(
                        {
                          aws_route53_zone_name = list(string)
                        }
                      )
                    }
                  )
                }
              )
              he_aws_tf_mod_amz_s3_bkt = object(
                {
                  he_aws_tf_mod_aws_cp = object(
                    {
                      aws_s3_bucket = object(
                        {
                          aws_s3_bucket_versioning = list(
                            object(
                              {
                                aws_s3_bucket_ver_ena = bool
                              }
                            )
                          )
                        }
                      )
                    }
                  )
                }
              )
            }
          )
        }
      )
    }
  )
}

