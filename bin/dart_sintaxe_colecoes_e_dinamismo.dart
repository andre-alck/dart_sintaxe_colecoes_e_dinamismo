void main() {
  // escolherMeioDeTransporteInt(0);
  escolherMeioDeTransporteEnum(Transporte.andando);
}

// void escolherMeioDeTransporteInt(int locomocao) {
//   if (locomocao == 0) {
//     print("Carro.");
//   } else if (locomocao == 1) {
//     print("Bike.");
//   } else {
//     print("Meio de transporte não identificado.");
//   }
// }

enum Transporte { andando, aviao, bike, carro, patins, skate, trem }

void escolherMeioDeTransporteEnum(Transporte locomocao) {
  switch (locomocao) {
    // case Transporte.andando:
    //   print("Andando.");
    //   break;
    case Transporte.aviao:
      print("Avião.");
      break;
    case Transporte.bike:
      print("Bike.");
      break;
    case Transporte.carro:
      print("Carro.");
      break;
    case Transporte.patins:
      print("Patins.");
      break;
    case Transporte.skate:
      print("Skate.");
      break;
    case Transporte.trem:
      print("Trem.");
      break;
    default:
      print("Meio de transporte não identificado.");
      break;
  }
}
