# aws-iac-ml
Desenvolver e implementar uma solução completa de infraestrutura em nuvem utilizando laC para hospedar uma aplicação web de previsão de compra.


# MLOps com IaC Para Automação do Deploy de Modelo de Machine Learning na Nuvem

# Instruções
Execute o comando abaixo para criar a imagem Docker
```
docker build -t mlops-image:p7 .
```

# Execute o comando abaixo para criar o container Docker
```
docker run -dit --name mlops-p7 -v ./IaC:/iac mlops-image:p7 /bin/bash
```

Configure o acesso a AWS na maquina virtual criada
abra o terminal no Docker
````
bash
aws configure
AWS Access Key ID <sua chave>
AWS Secret Access Key <seu segredo>
Default region name <us-east-2>
Default output format <enter>
````

Para testar use (deve listar os bukets ou apenas não pode dar mensagem de erro se não existir buckets criados)
```
aws s3 ls
```
Na maquina virtual, entre na pasta ml_app
```
python cria_modelo.py
```
Hora de subir tudo para AWS
Ainda na maquina virtual, vá até a pasta iac_deploy

````
terraform init
terraform validate
terraform plan
terraform apply

Enter a value: yes

copie o endpoint exibido
````
no navegador
http://<nome_endpoint>:5000

Ao final podemos apagar tudo
```
terraform destroy
Enter a value: yes
```
