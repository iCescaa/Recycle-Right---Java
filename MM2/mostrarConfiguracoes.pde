// Variáveis de controle
boolean musicaAtiva = true;
boolean animacoesAtivas = true;
boolean somBotaoAtivo = true;

// Variáveis de controle do volume
float volumeMusica; 


void mostrarConfiguracoes() {
  image(backMenu, 0, 0, 600, 600); 
  textAlign(CENTER, CENTER);
  textSize(22);

  // Controla a música
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > 230 - 25 && mouseY < 230 + 25) {
    fill(#ca0d67);
    if (mousePressed) {
      if (somBotaoAtivo) {
        somBotao.play(); 
      }
      
      // Alterna o estado da música
      musicaAtiva = !musicaAtiva; 
      
      if (musicaAtiva) {
        musica.amp(volumeMusica);
        if (!musica.isPlaying()) { 
          musica.play(); 
        }
      } else {
        musica.pause(); 
      }
      delay(200); 
    }
  } else {
    fill(#eac213);
  }
  
  rect(width / 2 - 150, 230 - 25, 300, 50, 20); 
  fill(0);
  text(musicaAtiva ? "Parar Música" : "Tocar Música", width / 2, 230);

  // Controla o som dos botões
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > 300 - 25 && mouseY < 300 + 25) {
    fill(#ca0d67);
    if (mousePressed) {
      if (somBotaoAtivo) {
        somBotao.play(); 
      }
      somBotaoAtivo = !somBotaoAtivo; // Alterna estado do som do botão
      delay(200); 
    }
  } else {
    fill(#eac213);
  }
  
  rect(width / 2 - 150, 300 - 25, 300, 50, 20); 
  fill(0);
  text(somBotaoAtivo ? "Desativar Som dos Botões" : "Ativar Som dos Botões", width / 2, 300);

  // Controle de Animações 
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > 370 - 25 && mouseY < 370 + 25) {
    fill(#ca0d67);
    if (mousePressed) {
      if (somBotaoAtivo) {
        somBotao.play(); 
      }
      animacoesAtivas = !animacoesAtivas; 
      delay(200);
    }
  } else {
    fill(#eac213);
  }
  
  rect(width / 2 - 150, 370 - 25, 300, 50, 20); 
  fill(0);
  text(animacoesAtivas ? "Parar Animações" : "Ativar Animações", width / 2, 370);

  // Botão Sair
  if (mouseX > 500 && mouseX < 580 && mouseY > 25 && mouseY < 75) {
    fill(#ca0d67);
  } else {
    fill(#eac213);
  }
  
  rect(500, 25, 80, 50, 20); 
  fill(0);
  textSize(18);
  text("Sair", 540, 50);
  
  if (mouseX > 500 && mouseX < 580 && mouseY > 25 && mouseY < 75) {
    if (mousePressed) {
      if (somBotaoAtivo) {
        somBotao.play(); 
      }
      tela = 0; 
      paginaAtual = 3; 
      delay(200); 
    }
  }
}
