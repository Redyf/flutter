void main() {
  // O dart me forneceu autocomplete para a variável codigoTrabalho, ou seja... o static serve para que a gente crie e armazene dados a própria estrutura da classe para que não precisemos instanciar um objeto dela para ter acesso a essa informação

  Viagem viagemHoje = Viagem();
  Viagem.codigoTrabalho;
}

class Viagem {
  static String codigoTrabalho = "KSLAWD12";
  double dinheiro = 0;

  printCodigo() {
    print(codigoTrabalho);
  }
}

// O método areaStatic dentro da classe Circulo não consegue acessar a informação this.raio, pois ela é uma propriedade de instância da classe Circulo, mas consegue acessar a informação pi que é uma propriedade estática. Portanto, para fazer o cálculo da área, precisamos pedir a informação do raio como parâmetro do método!

class Circulo {
  static double pi = 3.1415;
  double raio;

  Circulo(this.raio);

  double area() {
    return pi * raio * raio;
  }

  static double areaStatic(double raioParam) {
    return pi * raioParam * raioParam;
  }
}
