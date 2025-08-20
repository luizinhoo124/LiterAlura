# 📚 LiterAlura - Catálogo de Livros

<div align="center">

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Java Version](https://img.shields.io/badge/Java-17-blue)](https://www.java.com/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.3.0-brightgreen)](https://spring.io/projects/spring-boot)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue)](https://www.postgresql.org/)

</div>

## 🏆 Badge Oracle Next Education

Este projeto foi desenvolvido como parte do programa **ONE - Oracle Next Education** em parceria com a **Alura**.

<div align="center">

![Badge](img/badge%20literalura.png)

</div>

## 📖 Sobre o Projeto

O **LiterAlura** é uma aplicação console desenvolvida em Java que permite aos usuários pesquisar, catalogar e gerenciar informações sobre livros e autores. A aplicação consome dados da API **Gutendex** para buscar informações sobre livros e armazena essas informações em um banco de dados PostgreSQL para consultas futuras.

## ✨ Funcionalidades

A aplicação oferece um menu interativo com as seguintes opções:

1. **🔍 Buscar livro por título** - Pesquisa livros na API Gutendex pelo título
2. **📚 Listar livros registrados** - Exibe todos os livros salvos no banco de dados
3. **👥 Listar autores registrados** - Mostra todos os autores cadastrados
4. **🎂 Listar autores vivos em um determinado ano** - Filtra autores que estavam vivos em um ano específico
5. **📅 Listar autores nascidos em um determinado ano** - Busca autores por ano de nascimento
6. **⚰️ Listar autores por ano de morte** - Filtra autores por ano de falecimento
7. **🌍 Listar livros por idioma** - Categoriza livros por idioma (português, inglês, francês, espanhol)

## 🛠️ Tecnologias Utilizadas

- **Java 17** - Linguagem de programação
- **Spring Boot 3.3.0** - Framework para desenvolvimento de aplicações Java
- **Spring Data JPA** - Abstração para acesso a dados
- **Hibernate** - ORM (Object-Relational Mapping)
- **PostgreSQL** - Sistema de gerenciamento de banco de dados
- **Jackson 2.16.0** - Biblioteca para processamento JSON
- **Maven** - Gerenciador de dependências
- **API Gutendex** - Fonte de dados sobre livros

## 📋 Pré-requisitos

Antes de executar o projeto, certifique-se de ter instalado:

- **Java 17** ou superior
- **Maven 3.6+**
- **PostgreSQL 12+**
- **Git**

## 🚀 Instalação e Configuração

### 1. Clone o repositório
```bash
git clone https://github.com/luizinhoo124/LiterAlura.git
cd LiterAlura
```

### 2. Configure o banco de dados PostgreSQL

Crie um banco de dados no PostgreSQL:
```sql
CREATE DATABASE literalura;
```

### 3. Configure as variáveis de ambiente

Configure o arquivo `src/main/resources/application.properties`:
```properties
# Configuração do Banco de Dados
spring.datasource.url=jdbc:postgresql://localhost:5432/literalura
spring.datasource.username=seu-usuario
spring.datasource.password=sua-senha
spring.datasource.driver-class-name=org.postgresql.Driver

# Configuração do JPA/Hibernate
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.jpa.format-sql=true
spring.jpa.database-platform=org.hibernate.dialect.PostgreSQLDialect
```

### 4. Execute o projeto
```bash
# Instalar dependências
mvn clean install

# Executar a aplicação
mvn spring-boot:run
```

## 🎯 Como Usar

Após executar a aplicação, você verá um menu interativo no console:

```
***********************
Escolha uma opção:
1 - Buscar livro por título
2 - Listar livros registrados
3 - Listar autores registrados
4 - Listar autores vivos em um determinado ano
5 - Listar autores nascidos em um determinado ano
6 - Listar autores por ano de morte
7 - Listar livros por idioma
0 - Sair
***********************
```

### Exemplos de Uso:

**Buscar livro por título:**
- Digite `1` e pressione Enter
- Digite o título do livro (ex: "Dom Casmurro")
- O sistema buscará na API Gutendex e salvará no banco de dados

**Listar livros por idioma:**
- Digite `7` e pressione Enter
- Escolha o idioma: `pt` (português), `en` (inglês), `fr` (francês), `es` (espanhol)

**Listar autores vivos em um ano:**
- Digite `4` e pressione Enter
- Digite o ano (ex: 1900)
- O sistema mostrará autores que estavam vivos naquele ano

## 📁 Estrutura do Projeto

```
src/
└── main/
    └── java/
        └── br/
            └── com/
                └── alura/
                    └── literalura/
                        ├── LiteraluraApplication.java    # Classe principal da aplicação
                        ├── model/                        # Entidades do banco de dados
                        │   ├── Autor.java               # Entidade Autor
                        │   ├── AutorDTO.java            # DTO para dados de Autor
                        │   ├── Livro.java               # Entidade Livro
                        │   └── LivroDTO.java            # DTO para dados de Livro
                        ├── principal/                    # Lógica principal da aplicação
                        │   └── Principal.java           # Menu e interação com usuário
                        ├── repository/                   # Repositórios JPA
                        │   ├── AutorRepository.java     # Repositório de Autores
                        │   └── LivroRepository.java     # Repositório de Livros
                        └── service/                      # Serviços da aplicação
                            ├── ConsumoAPI.java          # Consumo da API Gutendex
                            └── ConverteDados.java       # Conversão de dados JSON
```

## 🌐 API Utilizada

O projeto utiliza a **[API Gutendex](https://gutendex.com/)**, que fornece acesso gratuito a mais de 70.000 livros do Projeto Gutenberg.

**Endpoint principal:** `https://gutendex.com/books/`

**Exemplo de busca:** `https://gutendx.com/books/?search=dom%20casmurro`

## 💡 Exemplos de Funcionalidades

### Busca de Livros
```java
// Exemplo de resposta da API para "Dom Casmurro"
{
  "title": "Dom Casmurro",
  "authors": [
    {
      "name": "Machado de Assis",
      "birth_year": 1839,
      "death_year": 1908
    }
  ],
  "languages": ["pt"],
  "download_count": 1234
}
```

### Consultas Personalizadas
O sistema permite consultas avançadas como:
- Autores vivos em 1900
- Livros em português
- Autores nascidos no século XIX

## 🤝 Como Contribuir

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE) - veja o arquivo LICENSE para detalhes.

## 👨‍💻 Desenvolvedor

Projeto desenvolvido como parte do **Challenge Oracle Next Education** em parceria com a **Alura**.

---

<div align="center">

**Desenvolvido com ❤️ como parte do programa ONE - Oracle Next Education**

[⬆ Voltar ao topo](#-literalura---catálogo-de-livros)

</div>
