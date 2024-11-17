// Função para mostrar as instruções
void mostrarInstrucoes() {
  
  // Definir o fundo e alinhamento do texto
  image(backMenu, 0, 0, 600, 600); 
  textAlign(CENTER, CENTER);
  textSize(32);
  fill(255); 
  rect(50, 85, 500, 480, 20); 
  fill(0);
  
  // Definir os passos das instruções
  textSize(16);
  text("\nPASSOS PARA JOGAR:", width / 2, 100);

  // Passos com quebras de linha
  text("1. Clique em 'Começar' para iniciar o jogo.", width / 2, 150);

  text("2. Leia as informações sobre reciclagem e como separá-la", width / 2, 190);
  text("corretamente.", width / 2, 210);

  text("3. Clique em ('Próximo') para avançar para a próxima página", width / 2, 250);
  text("ou em '(Voltar)' para retornar à página anterior.", width / 2, 270);

  text("4. Repita os passos até poder optar por colocar o conhecimento", width / 2, 310);
  text("em prática ou não.", width / 2, 330);

  // Definir o botão Voltar
   if (mouseX > 500 && mouseX < 580 && mouseY > 25 && mouseY < 75) {
    fill(#ca0d67);
    if (mousePressed) {
      if (somBotaoAtivo) {
        somBotao.play();
      }
      tela = 0; 
    }
  } else {
    fill(#eac213);
  }
  
  // Desenhar o botão "Sair" na parte superior da tela
  rect(500, 25, 80, 50, 20); 
  fill(0);
  textSize(18);
  text("Sair", 540, 50);
}
