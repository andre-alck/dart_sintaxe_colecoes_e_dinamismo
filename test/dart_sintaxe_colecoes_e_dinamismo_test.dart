import 'package:test/test.dart';

import '../bin/dart_sintaxe_colecoes_e_dinamismo.dart';

void main() {
  test('numerations', () {
    expect(Transporte.andando.index, 0);
    expect(Transporte.aviao.index, 1);
    expect(Transporte.bike.index, 2);
    expect(Transporte.carro.index, 3);
    expect(Transporte.patins.index, 4);
    expect(Transporte.skate.index, 5);
    expect(Transporte.trem.index, 6);
  });
}
