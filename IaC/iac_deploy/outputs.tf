# MLOps com IaC Para Automação do Deploy de Modelo de Machine Learning na Nuvem

# Saída gerada após o deploy com IaC
output "instance_public_dns" {
  value = aws_instance.ml_api.public_dns
}
