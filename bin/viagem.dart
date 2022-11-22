import 'transporte.dart';

class Viagem {
  static String codigoViagem = "AWERIJSB872";
  double custo;
  Transporte meioDeTransporte;
  Set<String> locaisVisitados = <String>{};
  Map<String, dynamic> precosRegistrados = {};
  late int _quantidadeDeLocaisVisitados;

  Viagem({required this.custo, required this.meioDeTransporte});

  void escolherMeioDeTransporte(Transporte transporte) {
    switch (transporte) {
      case Transporte.andando:
        meioDeTransporte = Transporte.andando;
        print("Andando\n");
        break;
      case Transporte.aviao:
        meioDeTransporte = Transporte.aviao;
        print("Avião\n");
        break;
      case Transporte.bike:
        meioDeTransporte = Transporte.bike;
        print("Bike\n");
        break;
      case Transporte.carro:
        meioDeTransporte = Transporte.carro;
        print("Carro\n");
        break;
      case Transporte.patins:
        meioDeTransporte = Transporte.patins;
        print("Patins\n");
        break;
      case Transporte.skate:
        meioDeTransporte = Transporte.skate;
        print("Skate\n");
        break;
      case Transporte.trem:
        meioDeTransporte = Transporte.trem;
        print("Trem\n");
        break;
      default:
        print("Meio de transporte não identificado\n");
        break;
    }
  }

  void visitar(String localDaVisita) {
    locaisVisitados.add(localDaVisita);
  }

  void registrar(String local, dynamic value) {
    precosRegistrados[local] = value;
  }

  int get quantidadeDeLocaisVisitados {
    _quantidadeDeLocaisVisitados = locaisVisitados.length;
    return _quantidadeDeLocaisVisitados;
  }

  set quantidadeDeLocaisVisitados(int novaQuantidadeDeLocaisVisitados) {
    if (novaQuantidadeDeLocaisVisitados > quantidadeDeLocaisVisitados) {
      print("Quantidade diferente.");
    } else {
      quantidadeDeLocaisVisitados = novaQuantidadeDeLocaisVisitados;
    }
  }
}
