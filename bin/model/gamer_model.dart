import '../interface/pessoa_interface.dart';
import 'pessoa_model.dart';

class GamerModel extends PessoaModel implements PessoaInterface {
  GamerModel({
    required super.altura,
    required super.corDaPele,
    required super.corDoCabelo,
    required super.idade,
    required super.nome,
    required super.peso,
  });

  //barra de energia = a vida, toda vex que jogar vai exceder fome, sede e etc

  late int i;
  late int k;
  void jogar() {
    if (acordado == true && sede == false && fome == false && sono == false) {
      print("Jogando lol");
      i++;
      k++;
      if (i == 1) {
        sede = true;
        fome = true;
      }
      if (k == 2) {
        sono = true;
      }
    } else {
      print("Voçe não pode jogar porque esta com fome,sede e cansado.");
    }
  }

  @override
  void acordar() {
    if (acordado == false) {
      print("levantando..");
      acordado = true;
      if (acordado == true && sede == false && fome == false) {
        i = 0;
      }
    } else {
      print("Voçe ja esta acordado.");
    }
  }

  @override
  void beberAgua() {
    if (sede == true && acordado == true) {
      print("Bebendo agua.");
      sede = false;
      if (acordado == true && sede == false && fome == false) {
        i = 0;
      }
    } else if (acordado == false) {
      print("Voçe esta dormindo.");
    } else {
      print("Voçe não esta com sede!");
    }
  }

  @override
  void comer() {
    if (fome == true && acordado == true) {
      print("Comendo.");
      fome = false;
      if (acordado == true && sede == false && fome == false) {
        i = 0;
      }
    } else if (acordado == false) {
      print("Voçe esta dormindo.");
    } else {
      print("Voçe não esta com fome!");
    }
  }

  @override
  void dormir() {
    if (sono == true) {
      print("Dormindo..");
      acordado = false;
      sono = false;
      k = 0;
    } else {
      print("Voçe não esta com sono!");
    }
  }

  @override
  void tomarCafe() {
    if (sono == true) {
      print("Tomando cafezinho.");
      sono = false;
    } else {
      print("Voçe não esta cansado, mas merece um cafezinho.");
    }
  }

  @override
  bool acordado = true;
  @override
  bool fome = false;
  @override
  bool sede = true;
  @override
  bool sono = false;
}
