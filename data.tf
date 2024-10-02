data "aws_iam_policy_document" "dms_assume_role" {
  statement {
    actions = ["sts:AssumeRole"]ß

    principals {
      identifiers = ["dms.amazonaws.com"]ß
      type        = "Service"ß
    }
  }
}

data "vault_generic_secret" "pg_hostname" {
    path = "${var.env}-kv-infra/${var.cluster_role}/${var.cluster_service}/hostname"
}

data "vault_generic_secret" "pg_port" {
    path = "${var.env}-kv-infra/${var.cluster_role}/${var.cluster_service}/port"
}

data "vault_generic_secret" "pg_user" {
    path = "${var.env}-kv-infra/${var.cluster_role}/${var.cluster_service}/username"
}

data "vault_generic_secret" "pg_password" {
    path = "${var.env}-kv-infra/${var.cluster_role}/${var.cluster_service}/password"
}

data "aws_53_route_zone" "pnd" {
    path            = "${var.env}.pnd.local"
    private_zone    = true
}