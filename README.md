# Bucket S3 da AWS criado pelo Terraform

Neste projeto, há a criação de um bucket S3 (armazenamento de objetos) na AWS através do Terraform.

## Procedimento de criação

1. Criar um bucket
1. Permitir o acesso público ao bucket
1. Adicionar a policy
1. Habilitar a opção website estático
1. Upload do arquivo index.html

## Resultados

Após a execução do código terraform, você terá:

Um bucket público que hospeda a api web do site [VIACEP](https://viacep.com.br).

## Como usar este projeto

Para executar o código do terraform, execute o comando:

`terraform apply`

Para acessar a API web, vá para a console da AWS, na página do serviço S3, entre no bucket criado, marque o objeto criado, e clique em abrir.

## License

License under the [GNU General Public License v3.0](./LICENSE)
