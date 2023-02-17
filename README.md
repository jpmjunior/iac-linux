# Bootcamp Linux do zero - Infraestrutura com código - Desafio de projeto

Provisionamento de um servidor Linux com criação de usuários, grupos e diretórios para os departamentos de uma empresa.  
Desafio de projeto da [DIO](https://dio.me) ministrado pelo professor [Denilson Bonatti](https://www.linkedin.com/in/denilsonbonatti).

![Projeto IaC Linux](https://github.com/jpmjunior/iac-linux/blob/main/iac-linux.png?raw=true)

## Definições
- Excluir diretórios, arquivos, grupos e usuários criados anteriormente;
- Todo provisionamento deve ser feito em um arquivo do tipo Bash Script;
- O dono de todos os diretórios criados será o usuário root;
- Todos os usuários terão permissão total dentro do diretório publico;
- Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
- Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem;
- Subir arquivo de script criado para a sua conta no GitHub.

## Execução
1. Para executar este script no seu servidor, digite o seguinte comando para baixa-lo:

```bash
wget https://github.com/jpmjunior/iac-linux/raw/main/config-server.sh
```

2. Dê permissão de execução ao script:

```bash
chmod +x config-server.sh
```

3. Execute o script com privilégios de administrador:

```bash
sudo ./config-server.sh
```