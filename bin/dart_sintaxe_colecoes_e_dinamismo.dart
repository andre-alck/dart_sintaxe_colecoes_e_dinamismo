void main() {
  escolherMeioDeTransporte(Transporte.andando);

  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  registrosVisitados = registrarDestinos("Recife", registrosVisitados);
  registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);

  print('first:\t${registrosVisitados.first}');
  print('last:\t${registrosVisitados.last}');
  print('isEmpty:\t${registrosVisitados.isEmpty}');
  print('contains("Alagoas"):\t${registrosVisitados.contains("Alagoas")}\n');

  for (final String registro in registrosVisitados) {
    print(registro);
  }
}

enum Transporte { andando, aviao, bike, carro, patins, skate, trem }

void escolherMeioDeTransporte(Transporte locomocao) {
  switch (locomocao) {
    case Transporte.andando:
      print("Andando\n");
      break;
    case Transporte.aviao:
      print("Avião\n");
      break;
    case Transporte.bike:
      print("Bike\n");
      break;
    case Transporte.carro:
      print("Carro\n");
      break;
    case Transporte.patins:
      print("Patins\n");
      break;
    case Transporte.skate:
      print("Skate\n");
      break;
    case Transporte.trem:
      print("Trem\n");
      break;
    default:
      print("Meio de transporte não identificado\n");
      break;
  }
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}
