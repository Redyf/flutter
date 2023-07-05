void main() {
  // Maps Fazem associações de chave e valor. É padrão ter String e dynamic como tipos pros Maps. (Dependendo da linguagem pode se chamar dicionários)

  // É possível converter informações armazenadas nas propriedades em uma Classe para um Map com o objetivo de, por exemplo, transmitir essa informação pela internet (como em um cadastro de um usuário feito localmente e enviado para um banco de dados online), e o método toMap() é responsável por fazer essa conversão.

//   Pessoa pessoaDandara = Pessoa(nome: “Dandara”, idade: 25, estaAutenticada: true);
// Map<String, dynamic> mapDandara = pessoaDandara.toMap();

  // Testando iterables que é uma coleção de elementos que podem ser acessados sequencialmente, o iterable é uma classe abstrata.

  // print(registrosVisitados.first);
  // print(registrosVisitados.last);
  // print(registrosVisitados.isEmpty);
  // print(registrosVisitados.length);
  // print(registrosVisitados.contains("São Paulo"));
  // print(registrosVisitados.contains("Salvador"));

// Você pode usar o método .toSet() de uma list para fazer uma conversão de lista para Set automaticamente e assim se livrar das duplicatas.

  // List<String> jogos = [
  //   "Valorant",
  //   "Skyrim",
  //   "Destiny",
  //   "Fortnite",
  //   "Valorant"
  // ];
  // Set<String> jogosSet = jogos.toSet();
  // print(jogosSet);
}

// Sets parecem com listas porém armazenam valores únicos

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

// Switch case

void escolherMeioTransporteEnum(Transporte locomocao) {
  switch (locomocao) {
    case Transporte.carro:
      print("Vou de carro para a aventura!");
      break;
    case Transporte.bike:
      print("Vou de bike para aventura!");
      break;
    case Transporte.onibus:
      print("Vou de busão para a aventura!");
      break;
    default:
      print("Estou indo para a aventura, no fim isso é o que importa!");
      break;
  }
}

// Enums

enum Transporte { carro, bike, andando, skate, aviao, patins, trem, onibus }
