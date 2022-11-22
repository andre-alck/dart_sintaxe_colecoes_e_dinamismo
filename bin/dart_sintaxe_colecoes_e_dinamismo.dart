void main() {
  escolherMeioDeTransporte(Transporte.andando);

  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);

  Map<String, dynamic> registrarPrecos = {};

  registrarPrecos["Rio de Janeiro"] = 1200;
  registrarPrecos["São Paulo"] = 1500;
  registrarPrecos["Nova Iorque"] = "MUITO CARO";

  registrarPrecos["Errei"] = "o nome.";
  registrarPrecos.remove("Errei");

  Viagem viagemHoje = Viagem(dinheiro: 1.0);
  print(viagemHoje.dinheiro);
  print(Viagem.codigoViagem);
}

class Viagem {
  static String codigoViagem = "AWERIJSB872";
  double dinheiro;

  Viagem({required this.dinheiro});
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
