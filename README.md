# Starbugs-Cucumber

🤘 Sobre
Repositório do projeto de testes automatizados do sistema Startbugs

💻 Tecnologias

- Ruby
- Capybara
- RSpec
- Cucumber
- Selenium WebDriver

🤖 Como executar

1. Instalar as dependências
```bash
    `bundle install`
```

2. Executar testes de regressão
```bash
`bundle exec cucumber` ou `BROWSER=firefox bundle exec cucumber`
ou 
 `./bin/cucumber` ou `BROWSER=firefox ./bin/cucumber`
```
### ❓ Por que existem dois comandos para executar o Cucumber?

Neste projeto é possível executar os testes utilizando dois comandos:

```bash
🔎 ./bin/cucumber
Esse comando executa um binstub, que é um arquivo gerado pelo Bundler dentro da pasta bin/.

O binstub já contém internamente a ativação do ambiente do Bundler.
Ele também garante o uso das versões definidas no Gemfile.lock.

🔎 bundle exec cucumber

O comando bundle exec instrui o Bundler a executar o Cucumber utilizando exatamente as versões das gems definidas no Gemfile.lock.

É o padrão mais comum em projetos Ruby

🎓 Explicação resumida
Os dois comandos existem porque o Ruby permite instalar gems:

- Globalmente (na máquina)
- Localmente (via Bundler por projeto)

`bundle exec` e `bin/cucumber` garantem isolamento de versão.

Isso é controle de dependência.

