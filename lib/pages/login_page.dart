//import 'package:conecta/auth/auth_service.dart';
import 'package:conecta/constants/images.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      //backgroundColor: Colors.purpleAccent,
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
          const SizedBox( height: 70 ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    "Bem vindo",
                    style: TextStyle(
                      fontSize: 70,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                const Text(
                    "Já possui uma conta?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                    ),
                ),
                const SizedBox( height: 50),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(  
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: const Offset(1,1),
                        color: Colors.grey.withOpacity(0.5),
                      )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 1.0
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(30),
                        borderSide: const BorderSide(
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
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(  
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: const Offset(1,1),
                        color: Colors.grey.withOpacity(0.5),
                      )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 1.0
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(30),
                        borderSide: const BorderSide(
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
                const SizedBox(height: 20),
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
          const SizedBox( height: 70 ),
          Container(
            width: w * 0.5,
            height: h * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                image: AssetImage(tAcessar),
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
            children: const [
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
      ),
      /*body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
          left: 20, right: 20, top: size.height * 0.2, bottom: size.height * 0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Google sign in", style: TextStyle(fontSize: 30)),
            GestureDetector(
              onTap: () {
                AuthService().signInWithGoogle();
              },
              child: const Image(width: 100, image: AssetImage("assets/google.jpg")),
            )
          ],
        ),
      ),*/
    );
  }
}

//Login com google

/*class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 40),
        TextField(
          controller: emailController,
          cursorColor: Colors.white,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(labelText: 'Insira seu email'),
        ),
        SizedBox(height: 4),
        TextField(
          controller: passwordController,
          cursorColor: Colors.white,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(labelText: 'Insira senha'),
          obscureText: true,
        ),
        SizedBox(height: 20),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(50),
          ),
          icon: Icon(Icons.lock_open, size: 32), 
          label: Text(
            'Login',
            style: TextStyle(fontSize: 24),
          ),
          onPressed: signIn,
        ), 
      ]
    ),
  );
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(), 
      password: passwordController.text.trim(),
    );    
  }
}*/