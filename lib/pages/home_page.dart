import 'package:conecta/constants/colors.dart';
import 'package:conecta/constants/images.dart';
import 'package:conecta/constants/sizes.dart';
import 'package:conecta/pages/login_page.dart';
import 'package:conecta/pages/sign_up_page.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:conecta/auth/auth_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final tWelcome = "Bem vindo ao\t";
  final tAppName = "oConecta";
  final tWelcomSubtext = "Aplicativo que vai conectar você com outros alunos da sua Universidade";
  final tLogin = "Log In";
  final tSignUp = "Cadastre-se";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [tTopDegrade, tBottomDegrade]
          ),
        ),
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: const AssetImage(tConectaHome), height: height * 0.4,),
            Column(
              children: [
                RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: tWelcome, 
                  style: const TextStyle(
                    color: tWhiteColor,
                    fontSize: 25.0,
                  ),
                  children: [
                    TextSpan(
                      text: tAppName, 
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                        color: tWhiteColor,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w600
                      ),)
                    ),
                  ]
                )),
                const SizedBox(height: tSizedBoxHeight * 2),
                Text(
                  tWelcomSubtext, 
                  style: const TextStyle(
                    color: tWhiteColor,
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: 
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const LoginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        foregroundColor: tWhiteColor,
                        backgroundColor: tOutlineColor,
                        side: const BorderSide(color: tBlackColor),
                        padding: const EdgeInsets.symmetric(vertical: tButtonHeight)
                      ),
                      child: Text(tLogin.toUpperCase()),
                    ),                
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const SignUpPage()));
                      },
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        foregroundColor: tWhiteColor,
                        side: const BorderSide(color: tBlackColor),
                        padding: const EdgeInsets.symmetric(vertical: tButtonHeight)
                      ),
                    child: Text(tSignUp.toUpperCase())
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}