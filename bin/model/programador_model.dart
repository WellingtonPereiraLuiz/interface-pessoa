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

  late int c;
  late int m;
  void criarApp() {
    if (acordado == true && sede == false && fome == false && sono == false) {
      print("Criando app..");
      c++;
      m++;
      if (c == 2) {
        sede = true;
        fome = true;
      }
      if (m == 4) {
        sono = true;
      }
    } else {
      print("Voçe não pode criar um app porque esta com fome,sede e cansado.");
    }
  }

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
      if (acordado == true && sede == false && fome == false) {
        c = 0;
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
        c = 0;
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
      m = 0;
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
