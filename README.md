# Bootcamp Jornada DevOps com AWS - Impulso

Este repositório contém algumas atividades desenvolvidas durante o Bootcamp.

---

## 📁 Estrutura


### 📁 Pasta: `cluster`

Ambiente automatizado com **Vagrant** para criação de um cluster **Docker Swarm** com 2 máquinas virtuais:

- `master` (nó manager do cluster)
- `node01`, `node02`, `node03` (nós workers)

#### ✅ Como rodar:

1. Acesse a pasta no terminal:
   ```bash
   cd cluster
   ```

2. Suba as máquinas virtuais:
   ```bash
   vagrant up
   ```

3. Acesse o nó manager:
   ```bash
   vagrant ssh master
   ```

4. Verifique os nós do cluster:
   ```bash
   docker node ls
   ```

> 📌 Este projeto foi parcialmente baseado no repositório: [https://github.com/denilsonbonatti/docker-projeto2-cluster.git](https://github.com/denilsonbonatti/docker-projeto2-cluster.git)

---


### 📦 Pasta: `container`

Aplicação simples utilizando o servidor **Apache** em um container Docker, que serve uma página HTML estática.

### Como rodar:

1. Acesse a pasta no terminal:
   ```bash
   cd container
   ```

2. Execute o Docker Compose:
   ```bash
   docker-compose up --build
   ```

3. Abra o navegador e acesse:
   ```
   http://localhost:8080
   ```

---

### 📁 Pasta: `linux-scripts`

Conjunto de scripts para praticar comandos básicos e intermediários do shell script.

####  `script.sh`

Executa operações como:
- Criação de diretórios
- Listagem de arquivos
- Modificação de permissões
- Redirecionamento de saída

####  `script2.sh`

Script complementar com exemplos de:
- Uso de **variáveis**
- **Loops**
- **Comandos condicionais**

---
<<<<<<< HEAD
=======


>>>>>>> 7a5d056 (atividade 4)
