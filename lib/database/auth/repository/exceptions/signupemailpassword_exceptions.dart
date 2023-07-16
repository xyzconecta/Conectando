class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message = "Ocorreu um erro desconhecido"]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch(code) {
      case 'weak-passord': 
        return const SignUpWithEmailAndPasswordFailure('Sua senha deve ter pelo menos 8 digitos com ao menos 1 número');
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure('Email inválido ou incorreto');
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordFailure('Esse email já foi cadastrado');
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordFailure('Essa conta foi desabilitada, contate o suporte para mais detalhes');
      default: 
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}