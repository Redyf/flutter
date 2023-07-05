// void = func que não retorna nada depois que ela acaba
// O dart permite int e double mas não float, short, long.
// Use o var quando não sabe que tipo de informação você vai receber.
// final = constante que não precisa ser definida no início, exemplo: final int idade;
void main() {
  /// Comentário de Documentação
  /** Novo comentário de documentação com várias linhas **/

  // Informações sobre a Persona
  int idade = 19;
  double altura = 1.70;
  bool geek = (idade == altura);
  const String nome = "Mateus";
  final String apelido;
  apelido = "Teu";
  bool maiorDeIdade;
  int energia = 100;

  // Método para definir se a Persona é maior de idade
  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  // Método para dizer quantas voltas foram dadas
  for (var i = 0; i < 5; i++) {
    print("Concluí $i voltas");
  }

  // Método para retirar a energia da Persona
  while (energia > 0) {
    print("Mais uma repetição");
    energia = energia - 6;
  }

  // Outro método de fazer o while
  // do {
  //   print("Mais uma repetição");
  //   energia = energia - 6;
  // } while (energia > 0);

  // Definimos nossa Lista com todos os Status da Persona
  List<dynamic> mateus = [idade, altura, geek, nome, apelido];

  String frase = "Eu sou ${mateus[3]}, porém pode me chamar de ${mateus[4]}.\n"
      "Eu me considero geek? ${mateus[2]}.\n"
      "Tenho ${mateus[0]} anos e ${mateus[1]} de altura.\n"
      "Eu sou maior de idade? $maiorDeIdade\n";

  //TODO: Fazer outras Personas da equipe de Mobile
  print(frase);
}
