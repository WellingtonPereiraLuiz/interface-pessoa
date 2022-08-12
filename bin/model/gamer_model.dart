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

  @override
  double barraDeEnergia = 100;

  void jogar() {
    if (barraDeEnergia >= 20) {
      if (acordado == true && sede == false && fome == false && sono == false) {
        print("Jogando lol");
        barraDeEnergia -= 20;
        if (barraDeEnergia <= 60) {
          sede = true;
          fome = true;
        }
        if (barraDeEnergia <= 40) {
          sono = true;
        }
      } else if (sede == true) {
        print("Voçe esta com sede, se hidrate-se");
      } else if (fome == true) {
        print("Voçe esta com fome, vá comer alguma coisa.");
      } else if (sono == true) {
        print("Voçe esta com sono, durma ou beba um café.");
      }
    }
  }

  @override
  bool acordado = true;
  @override
  bool fome = false;
  @override
  bool sede = false;
  @override
  bool sono = false;

  @override
  void acordar() {
    if (acordado == false) {
      print("levantando..");
      acordado = true;
      if (barraDeEnergia < 100) {
        barraDeEnergia + 20;
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
      if (barraDeEnergia < 100) {
        barraDeEnergia + 10;
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
      if (barraDeEnergia < 100) {
        barraDeEnergia + 10;
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
      if (barraDeEnergia < 100) {
        barraDeEnergia + 20;
      }
    } else {
      print("Voçe não esta com sono!");
    }
  }

  @override
  void tomarCafe() {
    if (sono == true) {
      print("Tomando cafezinho.");
      sono = false;
      if (barraDeEnergia < 100) {
        barraDeEnergia + 30;
      }
    } else {
      print("Voçe não esta cansado, mas merece um cafezinho.");
    }
  }
}
