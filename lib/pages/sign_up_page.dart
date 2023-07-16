import 'package:conecta/constants/images.dart';
import 'package:conecta/constants/colors.dart';
import 'package:conecta/constants/sizes.dart';
import 'package:conecta/database/entity/aluno_model.dart';
import 'package:conecta/pages/navigation_page.dart';
import 'package:conecta/widgets/formheader_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:conecta/database/auth/controllers/signup_controller.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tSplashContainerSize),
          child: Column(
            children: [
              const FormHeaderWidget(
                image: tLogo, 
                title: "Bem vindo ao conecta", 
                subTitle: "Crie sua primeira conta aqui"
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: tFormWeight - 10),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor preencha os campos';
                          }
                          return null;
                        },
                        controller: controller.fullName,
                        decoration: const InputDecoration(
                          label: Text("Nome Completo"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.person_outline_rounded,
                            color: tBlackColor,
                          ),
                          labelStyle: TextStyle(color: tBlackColor),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: tOutlineColor),
                          ),
                          /*enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: tOutlineColor)
                          )*/
                        ),
                      ),
                      const SizedBox(height: tSizedBoxHeight),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor preencha os campos';
                          }
                          return null;
                        },
                        controller: controller.email,
                        decoration: const InputDecoration(
                          label: Text("Email"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: tBlackColor,
                          ),
                          labelStyle: TextStyle(color: tBlackColor),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: tOutlineColor),
                          ),
                          /*enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: tOutlineColor)
                          )*/
                        ),
                      ),
                      const SizedBox(height: tSizedBoxHeight),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor preencha os campos';
                          }
                          return null;
                        },
                        controller: controller.password,
                        decoration: const InputDecoration(
                          label: Text("Senha"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.fingerprint,
                            color: tBlackColor,
                          ),
                          labelStyle: TextStyle(color: tBlackColor),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: tOutlineColor),
                          ),
                          /*enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: tOutlineColor)
                          )*/
                        ),
                      ),
                      const SizedBox(height: tSizedBoxHeight),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor preencha os campos';
                          }
                          if (value != controller.password.text.trim()){
                            return 'A senhas devem ser iguais';
                          }
                          return null;
                        },
                        controller: controller.phoneNo,
                        decoration: const InputDecoration(
                          label: Text("Confirme a senha"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.fingerprint,
                            color: tBlackColor,
                          ),
                          labelStyle: TextStyle(color: tBlackColor),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: tOutlineColor),
                          ),
                          /*enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: tOutlineColor)
                          )*/
                        ),
                      ),
                      const SizedBox(height: tSizedBoxHeight),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            /*if (formKey.currentState!.validate()) {
                             SignUpController.instance.registerUser(controller.email.text.trim(), 
                             controller.password.text.trim()); 
                            }*/
                            final user = UserModel(
                              email: controller.email.text.trim(),
                              password: controller.password.text.trim(),
                              fullName: controller.fullName.text.trim(),
                              phoneNo: controller.phoneNo.text.trim(),
                              matricula: "a",
                              nickname: "b",
                              curso: "OdioAoCarlos",
                              periodo: 2,
                              dataNasc: "e",
                              gender: "cars"
                            );
                            SignUpController.instance.createUser(user);
                            Get.to(() => const MyNavigationBar());
                            //TD PHONE AUTH??
                          },
                          child: const Text("Próximo"),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  /*@override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.purpleAccent,
      body: Column(
        children: [
          /*Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/login_img.png"
                ),
                fit: BoxFit.cover
              ),
            ),
          ),*/
          SizedBox( height: 70 ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Bem vindo",
                    style: TextStyle(
                      fontSize: 70,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                Text(
                    "Já possui uma conta?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold
                    ),
                ),
                SizedBox( height: 50),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(  
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1,1),
                        color: Colors.grey.withOpacity(0.5),
                      )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0
                        )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(  
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1,1),
                        color: Colors.grey.withOpacity(0.5),
                      )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0
                        )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: Container(),),
                    Text(
                        "Esqueceu a senha?",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox( height: 70 ),
          Container(
            width: w * 0.5,
            height: h * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(
                  "assets/acessar.png"
                ),
                fit: BoxFit.cover
              ),
            ),
          ),
          SizedBox(height: w * 0.2),
          RichText(text: TextSpan(
            text: "Não possui conta?", 
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 20,
            ),
            children: [
              TextSpan(
                text: "Cadastre-se", 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ]
          ))
        ],
      )
    );
  }*/
}