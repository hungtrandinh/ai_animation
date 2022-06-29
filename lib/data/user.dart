import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {
  final String? name;
  final String? email;
  final String? id;
  final List<String>? urlHightLight;

  MyUser({this.name, this.email, this.id, this.urlHightLight});

  factory MyUser.initial() {
    return MyUser(urlHightLight: []);
  }

  factory MyUser.fromDocument(DocumentSnapshot doc) {
    String email = "";
    String name = "";
    return MyUser(
        id: doc.id,
        email: doc["email"] ?? email,
        name: doc["name"] ?? name,
        urlHightLight: doc["urlHightLight"] ?? []);
  }

  Map<String, dynamic> toDocument() {
    return {
      'username': name ?? "",
      'email': email ?? "",
      'urlHightLightl': urlHightLight ?? [],
    };
  }

  MyUser copyWith({
    String? id,
    String? email,
    String? name,
    List<String>? urlHightLight,
  }) {
    return MyUser(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        urlHightLight: urlHightLight ?? this.urlHightLight);
  }
}
