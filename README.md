# Infra AWS Terraform

Este repositório contém módulos Terraform para provisionamento de infraestrutura na AWS.  
O objetivo é criar uma **infra modular, versionável e escalável**.

## Estrutura do repositório

- `modules/` - módulos reutilizáveis (networking, compute)
- `environments/` - configurações específicas por ambiente (dev, prod)
- `examples/` - exemplos de uso dos módulos
- `.gitignore` - mantém o repositório limpo

## Módulos

### Networking
- Cria: VPC, Subnets, Security Groups
- Variáveis: `vpc_cidr`, `subnet_cidrs`, `environment`
- Outputs: `vpc_id`, `subnet_ids`

### Compute
- Cria: EC2 instances
- Variáveis: `ami`, `instance_type`, `environment`
- Outputs: `instance_ids`, `public_ips`

## Como usar

Exemplo para ambiente dev:

```bash
cd environments/dev
terraform init
terraform plan
terraform apply
