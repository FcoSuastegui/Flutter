import 'dart:convert';

ProveedorModel proveedorModelFromJson(String str) =>
    ProveedorModel.fromJson(json.decode(str));

String proveedorModelToJson(ProveedorModel data) => json.encode(data.toJson());

class ProveedorModel {
  ProveedorModel({
    this.titulo,
    this.descripcion,
    this.emitido,
  });

  String titulo;
  String descripcion;
  String emitido;

  factory ProveedorModel.fromJson(Map<String, dynamic> json) => ProveedorModel(
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
