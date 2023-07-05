void main() {
  Jogos destiny = Jogos(
    "Destiny",
    "09/2014",
    "10/10",
    200,
  );
  FPS valorant = FPS(
    "Valorant",
    "05/2020",
    "9/10",
    0,
  );

  MOBA leagueoflegends = MOBA("League of Legends", "04/2009", "7/10", 0);
  destiny.gratuito();
  valorant.gratuito();
  leagueoflegends.gratuito();
  print(destiny.avaliacao);
  print(valorant.nome);
  print(leagueoflegends.nome);
}

class Jogos implements Gratuito {
  String nome;
  String dataDeLancamento;
  String avaliacao;
  double preco;

  Jogos(
    this.nome,
    this.dataDeLancamento,
    this.avaliacao,
    this.preco,
  );

  @override
  void gratuito() {
    if (preco > 0.01) {
      print("O jogo $nome não é gratuito");
    } else {
      print("O jogo $nome é gratuito");
    }
  }
}

class FPS extends Jogos implements Gratuito {
  FPS(String nome, String dataDeLancamento, String avaliacao, double preco,
      {bool? isGratuito})
      : super(nome, dataDeLancamento, avaliacao, preco);
}

class RPG extends Jogos implements Gratuito {
  RPG(
    String nome,
    String dataDeLancamento,
    String avaliacao,
    double preco,
  ) : super(nome, dataDeLancamento, avaliacao, preco);

  @override
  void gratuito() {}
}

class MOBA extends Jogos implements Gratuito {
  MOBA(String nome, String dataDeLancamento, String avaliacao, double preco)
      : super(nome, dataDeLancamento, avaliacao, preco);
}

abstract class Gratuito {
  void gratuito();
}
