// Função para mostrar o menu principal
void mostrarMenu() {
  
  image(backMenu, 0, 0, 600, 600); 
  
  // Exibir as personagens no menu principal e os animar se o usuário quiser
  if (animacoesAtivas) {
  float personagemY1 = height / 2 + 110 + sin(frameCount * 0.12) * 5;
  image(personagens[0], width / 20, personagemY1, 200, 200);
  
  float personagemY2 = height / 2 + 110 + sin(frameCount * 0.13) * 5;
  image(personagens[2], width / 2 + 100, personagemY2, 200, 200);
} else {
  image(personagens[0], width / 20, height / 2 + 110, 200, 200); // Sem animação
  image(personagens[2], width / 2 + 100, height / 2 + 110, 200, 200); // Sem animação
}


  // Definir o texto do menu e as imagens
  textAlign(CENTER, CENTER);
  textSize(32);
  image(logo, width / 2 - 140, 10, 300, 250);
  
  // Definir o botão "Começar" e configurá-lo para poder clicar nele, direcionando para a respectiva tela
  if (mouseX > width / 2 - 110 && mouseX < width / 2 + 110 && mouseY > height / 2 - 25 && mouseY < height / 2 + 25) {
    fill(#ca0d67);
    if (mousePressed) {
      if (somBotaoAtivo) {
        somBotao.play();
      }
      tela = 3; 
      paginaAtual = 3;
    }
  } else {
     fill(#eac213);
  }
  
  rect(width / 2 - 110, height / 2 - 25, 225, 50);
  fill(0);
  text("Começar", width / 2, height / 2);
  
  // Definir o botão "Instruções" e configurá-lo para poder clicar nele, direcionando para a respectiva tela
  if (mouseX > width / 2 - 110 && mouseX < width / 2 + 110 && mouseY > height / 2 + 50 - 25 && mouseY < height / 2 + 50 + 25) {
    fill(#ca0d67);
    if (mousePressed) {
      if (somBotaoAtivo) {
        somBotao.play();
      }
      tela = 2;
    }
  } else {
    fill(#eac213);
  }
  
  rect(width / 2 - 110, height / 2 + 50 - 25, 225, 50);
  fill(0);
  text("Instruções", width / 2, height / 2 + 50);
  
  // Definir o botão "Créditos" e configurá-lo para poder clicar nele, direcionando para a respectiva tela
  if (mouseX > width / 2 - 110 && mouseX < width / 2 + 110 && mouseY > height / 2 + 100 - 25 && mouseY < height / 2 + 100 + 25) {
      fill(#ca0d67);
      if (mousePressed) {
          if (somBotaoAtivo) {
              somBotao.play();
          }
          tela = 1; 
      }
  } else {
      fill(#eac213);
  }
  
  // Ajuste a posição do retângulo e do texto para que seja consistente
  rect(width / 2 - 110, height / 2 + 100 - 25, 225, 50); // Mantenha a posição Y consistente
  fill(0);
  text("Créditos", width / 2, height / 2 + 100); // Texto deve estar alinhado com o botão

  
  // Botão "Configurações"
  if (mouseX > width / 2 - 110 && mouseX < width / 2 + 110 && mouseY > height / 2 + 150 - 25 && mouseY < height / 2 + 150 + 25) {
    fill(#ca0d67);
    if (mousePressed) {
      if (somBotaoAtivo) {
        somBotao.play();
      }
      
      tela = 5;
      delay(200);
  
    }
  } else {
    fill(#eac213);
  }
  
  rect(width / 2 - 110, height / 2 + 150 - 25, 225, 50);
  fill(0);
  text("Configurações", width / 2, height / 2 + 150);
}
