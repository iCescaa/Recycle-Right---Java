// Função para mostrar as páginas do jogo
void mostrarPaginaJogo() {
  
  // Definindo o back
  background(#76a547);
  image(back, 0, 0, 600, 350); 
  fill(0);

  // Exibir o personagem correspondente à página, um de cada vez e os animando
  int personagemIndex = (paginaAtual - 3) % 2; 
  if (animacoesAtivas) {
  float personagemY = height - 290 + sin(frameCount * 0.1) * 5;
  image(personagens[personagemIndex], width / 20, personagemY, 250, 250);
} else {
  image(personagens[personagemIndex], width / 20, height - 290, 250, 250); // Sem animação
}

  
  // Definir o texto do balão de acordo com a página
  switch (paginaAtual) {
    case 3:
        balao.setTexto("Reciclagem é o processo de reaproveitar materiais descartados para criar novos produtos. Ela ajuda a reduzir a poluição.");
        break;
    case 4:
        balao.setTexto("Você sabia que a reciclagem reduz a necessidade de extração de matérias-primas? Isso preserva recursos naturais, como árvores e minerais.");
        break;
    case 5:
        balao.setTexto("O conceito dos 3Rs envolve: Reduzir, Reutilizar e Reciclar. Vamos começar pelo primeiro: Reduzir.");
        break;
    case 6:
        balao.setTexto("Reduzir significa evitar o consumo exagerado e o desperdício. Um exemplo é usar menos plástico no dia a dia.");
        break;
    case 7:
        balao.setTexto("O plástico, por exemplo, leva centenas de anos para se decompor na natureza. Reduzir seu uso ajuda a evitar o acúmulo de lixo.");
        break;
    case 8:
        balao.setTexto("Reutilizar vem em seguida. Significa dar novos usos aos materiais antes de descartá-los. Já pensou em reaproveitar frascos de vidro?");
        break;
    case 9:
        balao.setTexto("Reutilizar é mais fácil do que parece. Caixas de papelão podem ser usadas para armazenamento ou até mesmo como brinquedos.");
        break;
    case 10:
        balao.setTexto("Agora, vamos falar sobre reciclar. Esse processo transforma materiais que seriam descartados em novos produtos.");
        break;
    case 11:
        balao.setTexto("Podemos reciclar materiais como papel, plástico, vidro, metais e até mesmo eletrônicos. Cada tipo de material tem um processo específico.");
        break;
    case 12:
        balao.setTexto("A reciclagem de papel economiza árvores. Cada tonelada de papel reciclado salva cerca de 20 árvores de serem cortadas.");
        break;
    case 13:
        balao.setTexto("No caso do vidro, ele pode ser reciclado infinitamente sem perder a qualidade. Já o plástico, tem ciclos limitados.");
        break;
    case 14:
        balao.setTexto("A coleta seletiva é a separação do lixo em categorias: papel, vidro, plástico, metal e orgânicos. Isso facilita a reciclagem.");
        break;
    case 15:
        balao.setTexto("Cada tipo de resíduo vai para uma lixeira de cor específica. Isso ajuda as empresas de reciclagem a processarem corretamente os materiais.");
        break;
    case 16:
        balao.setTexto("As lixeiras coloridas têm essas funções: Azul para papel, Amarela para metais, Verde para vidro e Vermelha para plástico.");
        break;
    case 17:
        balao.setTexto("Materiais orgânicos, como restos de comida, devem ir para a lixeira marrom. Eles podem ser usados em compostagem.");
        break;
    case 18:
        balao.setTexto("Na compostagem, resíduos orgânicos se decompõem e viram adubo para plantas. Isso ajuda a fertilizar o solo.");
        break;
    case 19:
        balao.setTexto("A reciclagem e a compostagem evitam que toneladas de lixo acabem em aterros sanitários, que ocupam grandes áreas de terra.");
        break;
    case 20:
        balao.setTexto("Nos aterros, o lixo leva muitos anos para se decompor. Além disso, os gases liberados, como o metano, contribuem para o aquecimento global.");
        break;
    case 21:
        balao.setTexto("Reciclar não é apenas um benefício ambiental. Também economiza energia. Por exemplo, reciclar alumínio economiza até 95% de energia.");
        break;
    case 22:
        balao.setTexto("A produção de novos materiais, como vidro e plástico, gasta mais energia do que reciclar. Por isso, a reciclagem é tão importante.");
        break;
    case 23:
        balao.setTexto("Além dis so, a reciclagem gera empregos. Muitas pessoas trabalham na coleta, separação e processamento de materiais recicláveis.");
        break;
    case 24:
        balao.setTexto("Quer saber como começar? Primeiro, aprenda a separar corretamente os materiais recicláveis e não recicláveis em casa.");
        break;
    case 25:
        balao.setTexto("Você pode organizar uma pequena estação de coleta seletiva em sua casa com caixas ou sacos para separar o papel, plástico, vidro e metal.");
        break;
    case 26:
        balao.setTexto("Sempre lave as embalagens recicláveis, como potes e garrafas, antes de descartá-las. Isso evita contaminação e facilita o processo.");
        break;
    case 27:
        balao.setTexto("Alguns tipos de materiais, como pilhas, baterias e eletrônicos, precisam de uma destinação especial. Nunca jogue esses itens no lixo comum.");
        break;
    case 28:
        balao.setTexto("Procure pontos de coleta na sua cidade para descarte de eletrônicos. Esses materiais contêm substâncias tóxicas que não devem ir para o meio ambiente.");
        break;
    case 29:
        balao.setTexto("Separar e reciclar corretamente é uma ação poderosa para proteger o planeta. Compartilhe esse conhecimento com amigos e familiares.");
        break;
    case 30:
        balao.setTexto("Agora que você aprendeu tanto sobre reciclagem, que tal começar a colocar em prática? Cada pequena ação ajuda! O que acha de testar o conhecimento que você adquiriu sobre reciclagem agora?");
        break;
    default:
        paginaAtual = 31;
        break;
  }
    
  // Definindo o balão de diálogo 
  float balaoX = width / 20 + 250 - 70; 
  float balaoY = height / 4 + 120; 
  balao.exibir(balaoX, balaoY);
  
// Definindo lógica para navegar para a próxima página
if (paginaAtual < 31) {
  if (mouseX > 0 && mouseX < width / 2 && mouseY > height - 50 && mouseY < height) {
    fill(#ca0d67);
  } else {
    fill(#eac213);
  }
  
  // Definindo botão "(Próximo) e (Praticar) de acordo com a lógica antes de chegar na página 30"
  rect(0, height - 50, width / 2, 50);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  
  if (paginaAtual < 31) {
    if (paginaAtual == 30) {
      text("(Praticar)", width / 4, height - 25);
    } else {
      text("(Próximo)", width / 4, height - 25);
    }
  }

  // Permitindo o clique dos botões e para onde eles direcionam o usuário
   if (mouseX > 0 && mouseX < width / 2 && mouseY > height - 50 && mouseY < height) {
    fill(#ca0d67);
    if (mousePressed) {
      if (paginaAtual == 30) {
        exibirTelaPratica = true;
      } else {
        paginaAtual++; 
      }
      somBotao.play(); // Toca o som de botão
      delay(200); // Adiciona um pequeno atraso para evitar múltiplos cliques
    }
  }
}

// Definindo lógica para navegar para página anterior e permitindo os cliques
if (paginaAtual > 3) { 
  if (mouseX > width / 2 && mouseX < width && mouseY > height - 50 && mouseY < height) {
    fill(#ca0d67);
  } else {
    fill(#eac213);
  }
  
  // Definindo botão "(Voltar) e (Não Praticar) de acordo com a lógica antes de chegar na página 30"
  rect(width / 2, height - 50, width / 2, 50); 
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  if (paginaAtual < 31) {
    if (paginaAtual == 30) {
      text("(Não Praticar)", width * 3 / 4, height - 25);
    } else {
      text("(Voltar)", width * 3 / 4, height - 25);
    }
  }

  // Permitindo o clique dos botões e para onde eles direcionam o usuário
  if (mouseX > width / 2 && mouseX < width && mouseY > height - 50 && mouseY < height) {
    if (mousePressed) {
      if (paginaAtual == 30) {
        tela = 0; 
        somBotao.play();
      } else {
        paginaAtual--;
      }
      
      somBotao.play();
      delay(200); // Adiciona um pequeno atraso para evitar múltiplos cliques
    }
  }
} else {
  
  // Definindo quando o botão "Voltar" será desabilitado
  fill(#808080);
  rect(width / 2, height - 50, width / 2, 50); 
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("(Voltar)", width * 3 / 4, height - 25);
}

// Definindo botão Sair e os cliques nele
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
    delay(200); // Adiciona um pequeno atraso para evitar múltiplos cliques
    }
  }
}
