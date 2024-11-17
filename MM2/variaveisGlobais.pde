PImage[] personagens = new PImage[3];
PImage back;
PImage logo;
PImage backMenu;
boolean exibirTelaPratica = false;

// Variáveis para controlar a tela atual e a página atual
int tela = 0; 
int paginaAtual = 3; 
int telaPratica = 4;

// Variável para armazenar o balão de diálogo
BalaoDialogo balao;

// tela 0 = Menu
// tela 1 = Créditos
// tela 2 = Instruções
// tela 4 = Prática do jogo
// tela 5 = Configurações
// demais telas = páginas explicativas
