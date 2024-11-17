// Classe para o balão de diálogo
class BalaoDialogo {
  
  String texto;

  BalaoDialogo(String txt) {
    texto = txt;
  }

  void setTexto(String txt) {
    texto = txt;
  }

  void exibir(float x, float y) {
    textSize(16); 
    
    // Definindo o limite máximo de largura do balão
    float maxWidth = 250;
    String[] words = texto.split(" "); // Quebra o texto em palavras quando o limite é atingido
    StringBuilder linha = new StringBuilder(); // Adiciona, remove ou altere caracteres em uma string.
    
    float balaoWidth = 0; // Inicializa a largura do balão
    float balaoHeight = textAscent() + textDescent() + 20; //  Define altura do balão

    // Calcula a largura e altura do balão
    for (String word : words) {
      float wordWidth = textWidth(word + " " + " "); // Calcula a largura da palavra
      if (balaoWidth + wordWidth > maxWidth) {
        linha.append("\n"); // Adiciona uma quebra de linha
        balaoHeight += textAscent() + textDescent() + 5; // Aumenta a altura do balão
        balaoWidth = 0; // Reinicia a largura do balão
      }
      
      linha.append(word).append(" "); // Adiciona a palavra à linha
      balaoWidth += wordWidth; // Atualiza a largura total do balão
      
    }

    // Calcula a largura final do balão
    balaoWidth = min(textWidth(linha.toString()) + 80, maxWidth);
    
    // Desenha o balão
    fill(255);
    stroke(0);
    rect(x, y, balaoWidth, balaoHeight, 10); // Desenha o balão arredondado

    // Desenha o texto dentro do balão
    fill(0);
    textAlign(LEFT, TOP);
    text(linha.toString(), x + 10, y + 10); // Ajuste para o texto começar um pouco para dentro
  }
}
