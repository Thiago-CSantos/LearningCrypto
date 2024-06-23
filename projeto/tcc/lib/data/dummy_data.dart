// ignore_for_file: constant_identifier_names

import 'package:tcc/models/categoria.dart';
import 'package:tcc/models/categoria_learning.dart';

const DUMMY_ILLUSTRATIONS = [
  Categoria(
      id: 1, titulo: "Cryptography files ", img: "assets/images/cFiles.svg"),
  Categoria(
      id: 2, titulo: "Message encryption", img: "assets/images/message.svg"),
  Categoria(
      id: 3, titulo: "Crypto learning ", img: "assets/images/learning.svg"),
  Categoria(id: 4, titulo: "API", img: "assets/images/api.svg"),
];

const DUMMY_ILLUSTRATIONS_LEARNING = [
  CategoriaLearning(
      id: 1, titulo: "Create your own crypto", img: "assets/images/learning1.jpg"),
  CategoriaLearning(
      id: 2, titulo: "Cryptography", img: "assets/images/learning2.jpg"),
  CategoriaLearning(
      id: 3, titulo: "How to make", img: "assets/images/learning3.jpg"),
  CategoriaLearning(id: 4, titulo: "Elliptic curve", img: "assets/images/learning4.jpg"),
];
