import processing.sound.*;

SoundFile musica;
SoundFile somBotao;

void setup() {
  
  size(600, 600);
  
  // Carrega a fonte
  PFont fonte = createFont("Comic Sans MS", 24);
  textFont(fonte);
  
  // Carrega as imagens utilizadas
  logo = loadImage("logo.png");
  back = loadImage("back.png");
  personagens[0] = loadImage("1.png"); 
  personagens[1] = loadImage("2.png"); 
  personagens[2] = loadImage("2.2.png");
  backMenu = loadImage("menu.png");
  
  balao = new BalaoDialogo("Inicializando o balão");
  
  // Carrega a música
  musica = new SoundFile(this, "musica.mp3");
  musica.play(); // Toca a música
  musica.loop(); // Repete a música
  
  // Carrega o som de botão
  somBotao = new SoundFile(this, "buttonClick.wav");
}

void draw() {
  if (exibirTelaPratica) {
    mostrarTelaPratica(); 
  } else {
    if (tela == 0) {
      mostrarMenu();
    } else if (tela == 1) {
      mostrarCreditos();
    } else if (tela == 2) {
      mostrarInstrucoes();
    } 
    else if(tela == 4){
      mostrarTelaPratica();
    }
    else if(tela == 5){
      mostrarConfiguracoes();
    }
    
    else{
      mostrarPaginaJogo();
    }  
  }
}
