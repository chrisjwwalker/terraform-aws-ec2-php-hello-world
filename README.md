# terraform-aws-ec2-php-hello-world

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.58.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.php_hello_world](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_instance.php_hello_world](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.http_traffic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.outbound_traffic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_ami.amazon_linux_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_inbound_cidr_blocks"></a> [allowed\_inbound\_cidr\_blocks](#input\_allowed\_inbound\_cidr\_blocks) | IP address blocks that are permitted to access the EC2 instance | `list(string)` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The size of the machine deployed into EC2 | `string` | `"t2.micro"` | no |
| <a name="input_region"></a> [region](#input\_region) | The AWS region IaC will be deployed to | `string` | `"eu-west-2"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Set of tags associated with resources | `map(string)` | <pre>{<br>  "hello": "world"<br>}</pre> | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
