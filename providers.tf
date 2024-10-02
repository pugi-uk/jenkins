terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = ">= 5.43.0"
        }
        vault = {
            source  = "hashicorp/vault"
            version = ">= 3.4.0"
        }
    }
}

