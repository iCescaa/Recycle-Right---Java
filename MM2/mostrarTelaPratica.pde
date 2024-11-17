PImage[][] imagensBolinhas;
boolean botaoPressionado = false; 
PImage fundo;
PImage imgAcertou;
float[] x, y;
boolean[] bola;
int numBolas;
int[] tipos;
int[] variacoes;
int numTipos = 5;
color[] coresCaixas;
boolean dragging = false;
int selectedBall = -1;
boolean venceu = false;
float raio = 30;
boolean jogoInicializado = false;
int correctPlacements = 0;      
int incorrectPlacements = 0;     

void setupJogo() {
  venceu = false;
  numBolas = int(random(1, 21));
  
  x = new float[numBolas];
  y = new float[numBolas];
  bola = new boolean[numBolas];
  tipos = new int[numBolas];
  variacoes = new int[numBolas];

  coresCaixas = new color[numTipos];
  
  coresCaixas[0] = color(0, 0, 255);   // Azul (papel)
  coresCaixas[1] = color(0, 255, 0);   // Verde (vidro)
  coresCaixas[2] = color(255, 255, 0); // Amarelo (plástico)
  coresCaixas[3] = color(255, 0, 0);   // Vermelho (metal)
  coresCaixas[4] = color(165, 42, 42); // Marrom (orgânico)

  imagensBolinhas = new PImage[numTipos][2];

  imagensBolinhas[0][0] = loadImage("papel1.png");
  imagensBolinhas[0][1] = loadImage("papel2.png");

  imagensBolinhas[1][0] = loadImage("vidro1.png");
  imagensBolinhas[1][1] = loadImage("vidro2.png");

  imagensBolinhas[2][0] = loadImage("plas1.png");
  imagensBolinhas[2][1] = loadImage("plas2.png");

  imagensBolinhas[3][0] = loadImage("lata1.png");
  imagensBolinhas[3][1] = loadImage("lata2.png");

  imagensBolinhas[4][0] = loadImage("org1.png");
  imagensBolinhas[4][1] = loadImage("org2.png");

  fundo = loadImage("fundo.png");

  imgAcertou = loadImage("2.png");

  for (int i = 0; i < numBolas; i++) {
    x[i] = random(100, 500);
    y[i] = random(300, 600);
    tipos[i] = i % numTipos; // Define o tipo de cada bola
    variacoes[i] = int(random(2));
  }
}

void mostrarTelaPratica() {
  if (exibirTelaPratica) {
    background(255);
    fill(0);
    textSize(32);
    text("Pratica Jogo Aqui", width / 2, height / 2);

    if (mouseX > 500 && mouseX < 580 && mouseY > 25 && mouseY < 75) {
      fill(#ca0d67);
      if (mousePressed && !botaoPressionado) {
        tela = 0;
        somBotao.play();
        exibirTelaPratica = false;
      }
    } else {
      fill(#eac213);
    }

    rect(500, 25, 80, 50, 20);
    fill(0);
    textSize(18);
    text("Sair", 540, 50);

    if (!jogoInicializado) {
      setupJogo();
      jogoInicializado = true;
    }

    drawJogo();
  }

  if (mousePressed) {
    botaoPressionado = true;
  } else {
    botaoPressionado = false;
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

String textoBalao = "Agora, separe os materiais recicláveis e os coloque na lixeira correta!";

void drawJogo() {
    background(255); // Limpa a tela

    cenario(); // Desenha as lixeiras
    image(fundo, 0, 0, width, height); // Desenha o fundo

    // Desenha a imagem de "acertou" com animações se necessário
    if (animacoesAtivas) {
        float personagemY = height - 290 + sin(frameCount * 0.1) * 5;
        image(imgAcertou, width / 20, personagemY, 250, 250);
    } else {
        image(imgAcertou, width / 20, height - 290, 250, 250);
    }

    // Atualiza o texto do balão
    if (venceu) {
        balao.setTexto("Parabéns! Você separou os lixos corretamente!");
    } else {
        balao.setTexto("Agora separe os lixos recicláveis! Coloque-os nas lixeiras corretas!");
    }

    // Exibe o balão de diálogo
    float balaoX = width / 20 + 250 - 70;
    float balaoY = height / 4 + 120;
    balao.exibir(balaoX, balaoY);

    // Desenha a descrição das lixeiras
    String textoLixeiras = "Lixeiras: Azul (Papel), Verde (Vidro), Amarelo (Plástico), Vermelho (Metal), Marrom (Orgânico)";
    
    // Define o tamanho do texto
    textSize(16);
    textAlign(CENTER, CENTER);
    float textoLargura = textWidth(textoLixeiras);

    // Aumentar o tamanho do texto se estiver próximo da borda
    if (textoLargura > width - 40) {
        textSize(20);
    }
    
    float posY = height - 70;

    // Desenha o fundo cinza
    fill(128);
    rect(0, height - 100, width, 130);
    fill(0);

    // Verifica se o texto precisa ser quebrado em várias linhas
    if (textoLargura > width - 40) {
        String[] palavras = textoLixeiras.split(" ");
        String linhaAtual = "";
        for (String palavra : palavras) {
            String novaLinha = linhaAtual + (linhaAtual.isEmpty() ? "" : " ") + palavra;
            if (textWidth(novaLinha) > width - 40) {
                text(linhaAtual, width / 2, posY);
                linhaAtual = palavra;
                posY += textAscent() + textDescent();
            } else {
                linhaAtual = novaLinha;
            }
        }
        // Exibe a última linha
        if (!linhaAtual.isEmpty()) {
            text(linhaAtual, width / 2, posY);
        }
    } else {
        text(textoLixeiras, width / 2, posY);
    }

    // Desenhar as bolinhas depois do texto e do retângulo
    desenharBolinhas();
}

void cenario() {
  for (int i = 0; i < numTipos; i++) {
    fill(coresCaixas[i]);
    rect(i * (width / numTipos), 25, width / numTipos, 155);
  }
}

void desenharBolinhas() {
  for (int i = 0; i < numBolas; i++) {
    if (!bola[i]) {
      if (tipos[i] == 1) { 
        image(imagensBolinhas[tipos[i]][variacoes[i]], x[i] - raio, y[i] - raio - 10, raio * 2, raio * 2 * 1.2);
      } else {
        image(imagensBolinhas[tipos[i]][variacoes[i]], x[i] - raio, y[i] - raio, raio * 2, raio * 2);
      }
    }
  }
}

void mousePressed() {
  for (int i = 0; i < numBolas; i++) {
    if (!bola[i] && dist(mouseX, mouseY, x[i], y[i]) < raio) {
      dragging = true;
      selectedBall = i;
      break;
    }
  }
}

void mouseDragged() {
  if (dragging && selectedBall != -1) {
    x[selectedBall] = mouseX;
    y[selectedBall] = mouseY;
  }
}

void mouseReleased() {
  dragging = false; 
  int index = selectedBall;
  selectedBall = -1;

  if (index != -1) {
    if (y[index] < 155 && tipos[index] == (int)(mouseX / (width / numTipos))) {
      bola[index] = true; 
      correctPlacements++; 
    } else {
      bola[index] = false; 
      incorrectPlacements++; 
    }
  }

  venceu = true;
  for (int i = 0; i < numBolas; i++) {
    if (!bola[i]) {
      venceu = false; 
      break;
    }
  }

  if (venceu) {
    imgAcertou = loadImage("2.2.2.png"); 
    textoBalao = "Parabéns! Você separou os lixos corretamente!"; 
  }
}
