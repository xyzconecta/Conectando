import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;
  final String matricula;
  final String curso;
  final num periodo;
  final String dataNasc;
  final String gender;
  final String nickname;

  const UserModel({
    required this.fullName,
    required this.email,
    required this.phoneNo,
    required this.password,
    required this.matricula,
    required this.curso,
    required this.periodo,
    required this.nickname,
    required this.dataNasc,
    required this.gender
  });

  toJson(){
    return{
      "Matrícula": matricula,
      "Nome": fullName,
      "Apelido": nickname,
      "Email": email,
      "Senha": password,
      "Curso": curso,
      "Período": periodo,
      "Idade": dataNasc,
      "Genero": gender,
      "Telefone": phoneNo,
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>>document){
    final data = document.data()!;

    return UserModel(
      fullName: data["Nome"], 
      email: data["Email"], 
      phoneNo: data["phoneNo"], 
      password: data["password"], 
      matricula: data["matricula"], 
      curso: data["curso"], 
      periodo: data["periodo"], 
      nickname: data["nickname"], 
      dataNasc: data["dataNasc"], 
      gender: data["gender"],
      );
  }
}