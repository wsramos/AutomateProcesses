#!/bin/bash

# Função para verificar se o usuário digitou um nome para a pasta
function verificar_nome_pasta() {
  if [ -z "$1" ]; then
    echo "Erro: Nome da pasta não informado. Por favor, digite um nome para a pasta."
    exit 1
  fi
}

# Solicita ao usuário o nome da pasta principal
echo "Informe o nome da pasta principal:"
read -p "Nome da pasta: " nome_pasta

# Verifica se o nome da pasta foi digitado
verificar_nome_pasta "$nome_pasta"

# Cria a pasta principal
mkdir "$nome_pasta"

# Cria as subpastas Anexos e Scripts dentro da pasta principal
mkdir "$nome_pasta/Anexos"
mkdir "$nome_pasta/Scripts"

# Conteúdo do arquivo markdown Análise.md
conteudo_markdown=$(cat << EOF
# Análise

## Título

Insira o título da análise aqui.

## Entendimento funcional

* **Responsáveis:** Insira os nomes dos responsáveis pelo entendimento funcional.
* **Descrição:** Descreva o problema em detalhes, incluindo os objetivos da análise e os cenários de uso.

## Passos para replicar o problema

1. Descreva o passo a passo para reproduzir o problema.
2. Inclua screenshots ou outras mídias relevantes para ilustrar o problema.

## Análise técnica

* **Causa raiz:** Identifique a causa raiz do problema.
* **Diagrama de fluxo:** Inclua um diagrama de fluxo se for útil para ilustrar o problema e a solução.

## Resolução do problema

* **Descrição da solução:** Descreva a solução implementada para corrigir o problema.
* **Impacto:** Explique o impacto da solução e como ela resolve o problema.

## Testes

* **Descrição dos testes:** Descreva os testes realizados para validar a solução.
* **Resultados dos testes:** Apresente os resultados dos testes que comprovam a efetividade da solução.

## Considerações finais

* Resuma os pontos principais da análise.
* Apresente recomendações para melhorias futuras.
EOF
)

# Cria o arquivo Análise.md e escreve o conteúdo
echo "$conteudo_markdown" > "$nome_pasta/Análise.md"

# Exibe uma mensagem de sucesso
echo "Pasta '$nome_pasta' criada com sucesso!"
echo "Arquivo 'Análise.md' criado com sucesso!"
