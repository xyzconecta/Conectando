import 'package:conecta/constants/colors.dart';
import 'package:conecta/database/entity/aluno_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

//Cria perfil de usuário em signup_page

  createUser(UserModel user) async {
    await _db.collection("Alunos").add(user.toJson()
    ).whenComplete(
      () => Get.snackbar("Sucesso", "Sua conta foi criada",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: tOutlineColor,
          colorText: tWhiteColor,
      )
    ).catchError((error, StackTrace) {
      Get.snackbar("Erro", "Algo deu errado, tente novamente",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red
      );
    });

  }

//Pega info de um usuario
  Future<UserModel> getUserDetails(String email) async {
    final snapshot = await _db.collection("Alunos").where("Email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    return userData;
  }

//Retorna a lista dos clientes

  Future<List<UserModel>> allUser() async {
    final snapshot = await _db.collection("Alunos").get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    return userData;
  }
}