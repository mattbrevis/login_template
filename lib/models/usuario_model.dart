import 'dart:convert';

class UsuarioModel {
  String? usuario;
  String? senha;
  UsuarioModel({
    this.usuario,
    this.senha,
  });

  UsuarioModel copyWith({
    String? usuario,
    String? senha,
  }) {
    return UsuarioModel(
      usuario: usuario ?? this.usuario,
      senha: senha ?? this.senha,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'usuario': usuario,
      'senha': senha,
    };
  }

  factory UsuarioModel.fromMap(Map<String, dynamic> map) {
    return UsuarioModel(
      usuario: map['usuario'],
      senha: map['senha'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioModel.fromJson(String source) =>
      UsuarioModel.fromMap(json.decode(source));

  @override
  String toString() => 'UsuarioModel(usuario: $usuario, senha: $senha)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UsuarioModel &&
        other.usuario == usuario &&
        other.senha == senha;
  }

  @override
  int get hashCode => usuario.hashCode ^ senha.hashCode;
}
