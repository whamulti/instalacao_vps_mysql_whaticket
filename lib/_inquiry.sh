#!/bin/bash

get_mysql_root_password() {
  
  print_banner
  printf "${WHITE} 💻 Insira uma senha para o usuario Deploy e para o Banco de Dados (Não utilizar caracteres especiais):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " mysql_root_password
}

get_link_git() {
  
  print_banner
  printf "${WHITE} 💻 Insira o link do Github deseja instalar:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " link_git
}

get_instancia_add() {
  
  print_banner
  printf "${WHITE} 💻 Informe um nome para a instância que será instalada (Não utilizar espaços ou caracteres especiais, Utilizar Letras minusculas):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " instancia_add
}

get_max_whats() {
  
  print_banner
  printf "${WHITE} 💻 Informe a quantidade de WhatsApp que a ${instancia_add} poderá cadastrar:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_whats
}

get_max_user() {
  
  print_banner
  printf "${WHITE} 💻 Informe a quantidade de atendentes que a ${instancia_add} poderá cadastrar:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_user
}

get_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Digite o Domnínio do FRONTEND para a ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_url
}

get_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Digite o Domnínio do BACKEND para a ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_url
}

get_frontend_port() {
  
  print_banner
  printf "${WHITE} 💻 Digite a porta do FRONTEND para a ${instancia_add} (Ex: 3001) ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_port
}


get_backend_port() {
  
  print_banner
  printf "${WHITE} 💻 Digite a porta do BACKEND para a ${instancia_add} (Ex: 4001) ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_port
}

get_urls() {
  get_mysql_root_password
  get_link_git
  get_instancia_add
  get_max_whats
  get_max_user
  get_frontend_url
  get_backend_url
  get_frontend_port
  get_backend_port
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 Bem vindo(a) ao Gerenciador Whamulti, Selecione abaixo a proxima ação!${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [0] Instalar Whamulti\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    0) get_urls 
       ;;

    *) exit ;;
  esac
}


