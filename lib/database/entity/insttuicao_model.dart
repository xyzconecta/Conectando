
class InstituicaoModel {
  final String fullName;
  final String link;
  final String email;
  final String password;
  final String description;
  final String justification;

  const InstituicaoModel({
    required this.fullName,
    required this.link,
    required this.password,
    required this.description,
    required this.justification,
    required this.email,
  });

  toJson(){
    return{
      "Nome": fullName,
      "Link": link,
      "Email": email,
      "Senha": password,
      "Descrição": description,
      "Justificação": justification,
    };
  }
}