import 'package:conecta/database/auth/repository/exceptions/signupemailpassword_exceptions.dart';
import 'package:conecta/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:conecta/pages/navigation_page.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //Variaveis
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const HomePage()) : Get.offAll(() => const MyNavigationBar());
  }

  Future <void> createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => const MyNavigationBar()) : Get.to(() => const HomePage());
    } on FirebaseAuthException catch(e) {
        final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
        print('FIREBASE AUTH EXCEPTION - ${ex.message}');
        throw ex; 
    } catch(_){
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future <void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch(_){}
  }

  Future <void> logout() async => await _auth.signOut();
}