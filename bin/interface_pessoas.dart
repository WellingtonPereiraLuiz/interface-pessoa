import 'model/gamer_model.dart';
import 'model/programador_model.dart';

void main() {
  ProgramadorModel Programador = ProgramadorModel(
    altura: 1.82,
    corDaPele: "Moreno",
    corDoCabelo: "Preto",
    idade: 27,
    nome: "Bui",
    peso: 72.2,
  );

  GamerModel Gamer = GamerModel(
    altura: 1.80,
    corDaPele: "Verde",
    corDoCabelo: "Marrom escuro",
    idade: 23,
    nome: "Jonata",
    peso: 69.5,
  );

  Gamer.jogar();
  Gamer.jogar();
  Gamer.comer();
  Gamer.beberAgua();
  Gamer.jogar();
  Gamer.jogar();
  Gamer.tomarCafe();
  Gamer.dormir();
  Gamer.acordar();
}
