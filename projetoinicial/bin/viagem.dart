import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = "KSLAWD12";
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  int _totalLocaisVisitados = 0;

  Viagem({required this.locomocao});

  printCodigo() {
    print(codigoTrabalho);
  }

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

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados {
    return _totalLocaisVisitados;
  }
}
