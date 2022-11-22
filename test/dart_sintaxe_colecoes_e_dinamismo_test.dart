import 'package:test/test.dart';

import '../bin/dart_sintaxe_colecoes_e_dinamismo.dart';

class Pessoa {
  final String nome;
  final int idade;
  final bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String, dynamic> toMap() {
    return {
      "nome": nome,
      "idade": idade,
      "estaAutenticada": estaAutenticada,
    };
  }
}

void main() {
  late Pessoa pessoa;

  setUp(() {
    pessoa = Pessoa('nome', 1, true);
  });

  test('numerations', () {
    expect(Transporte.andando.index, 0);
    expect(Transporte.aviao.index, 1);
    expect(Transporte.bike.index, 2);
    expect(Transporte.carro.index, 3);
    expect(Transporte.patins.index, 4);
    expect(Transporte.skate.index, 5);
    expect(Transporte.trem.index, 6);
  });

  test('iterable getRange', () {
    List<int> numeros = [1, 2, 3, 4, 5];
    Iterable<int> iNumeros =
        numeros.getRange(numeros[0], numeros[numeros.length - 1]);
    for (int number in iNumeros) {
      expect(numeros.contains(number), true);
    }

    List<int> lNumeros = iNumeros.toList();
    expect(lNumeros.runtimeType, List<int>);
  });

  test(
      'implemente o método toMap() que converta as propriedades da classe Pessoa em um Map',
      () {
    Map<String, dynamic> mapPessoa = pessoa.toMap();
    expect(mapPessoa["nome"], pessoa.nome);
    expect(mapPessoa["idade"], pessoa.idade);
    expect(mapPessoa["estaAutenticada"], pessoa.estaAutenticada);
  });
}
