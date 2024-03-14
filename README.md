# Atualizar atributo extensionAttribute1 dos grupos no Active Directory

Este script PowerShell foi desenvolvido para atualizar o atributo `extensionAttribute1` de grupos no Active Directory, com base em uma lista de grupos fornecida em um arquivo CSV.

## Pré-requisitos

- O módulo `ActiveDirectory` deve estar instalado e disponível no ambiente onde o script será executado.
- O usuário que executa o script deve ter permissões suficientes para ler e modificar grupos no Active Directory.

## Como usar

1. Baixe o script PowerShell e o arquivo CSV contendo os nomes dos grupos que deseja atualizar.

2. Certifique-se de que o arquivo CSV tenha uma coluna chamada `NomeGrupo` que contenha os nomes dos grupos no Active Directory.

3. Abra um terminal PowerShell e navegue até o diretório onde o script e o arquivo CSV estão localizados.

4. Execute o script usando o seguinte comando:

    ```powershell
    .\ReplaceAttribute.ps1
    ```

5. O script irá iterar sobre os grupos listados no arquivo CSV, buscá-los no Active Directory e atualizar o atributo `extensionAttribute1` para cada grupo encontrado. Se a atualização for bem-sucedida, uma mensagem indicando o sucesso será exibida. Caso contrário, uma mensagem de falha será exibida.

## Notas

- Se um grupo listado no arquivo CSV não for encontrado no Active Directory, uma mensagem será exibida indicando que o grupo não foi encontrado.
- Certifique-se de revisar o código do script e entender como ele funciona antes de executá-lo em um ambiente de produção.
