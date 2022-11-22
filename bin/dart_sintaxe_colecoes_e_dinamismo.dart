import 'transporte.dart';
import 'viagem.dart';

void main() {
  Viagem viagem = Viagem(custo: 2, meioDeTransporte: Transporte.aviao);

  viagem.escolherMeioDeTransporte(Transporte.carro);

  viagem.visitar('Salto');
  viagem.registrar('Salto', 200);

  viagem.visitar('São Paulo');
  viagem.registrar('São Paulo', 'Muito caro.');

  print(viagem.quantidadeDeLocaisVisitados);
  viagem.quantidadeDeLocaisVisitados = 10;
  print(viagem.quantidadeDeLocaisVisitados);
}
