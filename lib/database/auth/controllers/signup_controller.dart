import 'package:conecta/database/auth/repository/auth_repository.dart';
import 'package:conecta/database/entity/aluno_model.dart';
import 'package:conecta/database/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  void registerUser(String email, String password) {
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }

  Future <void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    //phoneAuthentication(user.phoneNo);
  }

  /*void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }*/
}