class PessoaModel {
  double altura;
  String nome;
  String corDaPele;
  String corDoCabelo;
  double peso;
  int idade;

  PessoaModel({
    required this.altura,
    required this.corDaPele,
    required this.corDoCabelo,
    required this.idade,
    required this.nome,
    required this.peso,
  });

  // bool acordado = true;
  // bool sono = false;
  // bool fome = false;
  // bool sede = false;

  // @override
  // void beberAgua() {
  //   if (sede == true && acordado == true) {
  //     print("Bebendo agua.");
  //     sede = false;
  //   } else if (acordado == false) {
  //     print("Voçe esta dormindo.");
  //   } else {
  //     print("Voçe não esta com sede!");
  //   }
  // }

  // @override
  // void comer() {
  //   if (fome == true && acordado == true) {
  //     print("Comendo.");
  //     fome = false;
  //   } else if (acordado == false) {
  //     print("Voçe esta dormindo.");
  //   } else {
  //     print("Voçe não esta com fome!");
  //   }
  // }

  // @override
  // void dormir() {
  //   if (sono == true) {
  //     print("Dormindo..");
  //     acordado = false;
  //     sono = false;
  //   } else {
  //     print("Voçe não esta com sono!");
  //   }
  // }

  // @override
  // void acordar() {
  //   if (acordado == false) {
  //     print("levantando..");
  //     acordado = true;
  //   } else {
  //     print("Voçe ja esta acordado.");
  //   }
  // }

  // @override
  // void tomarCafe() {
  //   if (sono == true) {
  //     print("Tomando cafezinho.");
  //     sono = false;
  //   } else {
  //     print("Voçe não esta cansado, mas merece um cafezinho.");
  //   }
  // }
}
