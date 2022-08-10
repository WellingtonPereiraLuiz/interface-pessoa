import '../interface/pessoa_interface.dart';
import 'pessoa_model.dart';

class ProgramadorModel extends PessoaModel implements PessoaInterface {
  ProgramadorModel(
      {required super.altura,
      required super.corDaPele,
      required super.corDoCabelo,
      required super.idade,
      required super.nome,
      required super.peso});

  @override
  void acordar() {
    if (acordado == false) {
      print("levantando..");
      acordado = true;
    } else {
      print("Voçe ja esta acordado.");
    }
  }

  @override
  void beberAgua() {
    if (sede == true && acordado == true) {
      print("Bebendo agua.");
      sede = false;
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
  bool sede = false;

  @override
  bool sono = true;
}
