import 'dart:convert';

ControlModel controlModelFromJson(String str) =>
    ControlModel.fromJson(json.decode(str));

String controlModelToJson(ControlModel data) => json.encode(data.toJson());

class ControlModel {
  ControlModel({
    this.titulo,
    this.descripcion,
    this.emitido,
  });

  String titulo;
  String descripcion;
  String emitido;

  factory ControlModel.fromJson(Map<String, dynamic> json) => ControlModel(
        titulo: json["titulo"],
        descripcion: json["descripcion"],
        emitido: json["emitido"],
      );

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "descripcion": descripcion,
        "emitido": emitido,
      };
}
