import 'model/gamer_model.dart';
import 'model/programador_model.dart';

void main() {
  final Programador = ProgramadorModel(
    altura: 1.82,
    corDaPele: "Moreno",
    corDoCabelo: "Preto",
    idade: 22,
    nome: "Bui",
    peso: 72.2,
  );

  final GamerJonata = GamerModel(
    altura: 1.80,
    corDaPele: "Verde",
    corDoCabelo: "Marrom escuro",
    idade: 23,
    nome: "Jonata",
    peso: 69.5,
  );

  Programador.comer();
  GamerJonata.comer();
}
