import 'class_users.dart';

class ListaUsers {
  List<Usuario> usuarios;

  ListaUsers({required this.usuarios});

  factory ListaUsers.fromJson(List<dynamic> json) {
    return ListaUsers(
      usuarios: json.map((e) => Usuario.fromJson(e)).toList(),
    );
  }
  List<dynamic> toJson() {
    return usuarios;
  }
}
