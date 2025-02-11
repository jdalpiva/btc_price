#!/bin/bash

# Utilizando API da Coingecko
url="https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd"

# Usando o curl para reter os dados JSON e jq para extrair o preço do ativo
price=$(curl -s $url | jq -r '.bitcoin.usd')

# Imprimindo o resultado no terminal:

echo
echo -e "\033[93m###########################"
echo -e "\033[94m## Bitcoin price: \$${price} ##"
echo -e "\033[93m###########################"
echo

