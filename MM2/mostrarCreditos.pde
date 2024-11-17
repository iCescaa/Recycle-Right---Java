// Função para mostrar os créditos
void mostrarCreditos() {
  
  // Definir o fundo e alinhamento do texto
  image(backMenu, 0, 0, 600, 600); 
  textAlign(CENTER, CENTER);
  
  // Desenhar o fundo branco atrás do texto
  fill(255); 
  rect(85, 85, 430, 450, 20); 
  fill(0);
  
  // Seção Desenvolvedores
  textSize(20);
  text("DESENVOLVEDORES", width / 2, 120);
  textSize(16);
  text("Felipe Silva Cesca", width / 2, 150);
  text("Karen Cristini Nogueira", width / 2, 180);
  
  // Seção Agradecimentos
  textSize(20);
  text("AGRADECIMENTOS", width / 2, 230);
  textSize(16);
  text("Luiz Antonio Pavão", width / 2, 260);
  text("Rodrigo da Silva do Nascimento", width / 2, 290);
  text("PUCPR", width / 2, 320);
  
  // Seção Inspirações & Reconhecimento
  textSize(20);
  text("INSPIRAÇÕES & RECONHECIMENTO", width / 2, 360);
  textSize(16);
  text("Escola Games - Coleta Seletiva", width / 2, 390);
  text("Smashing Logo", width / 2, 420);
  text("Freepik", width / 2, 450);
  text("Freesound", width / 2, 480);
  text("Palavra Cantada", width / 2, 510);
  
  // Definir o botão Voltar, direcionando para o Menu
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
