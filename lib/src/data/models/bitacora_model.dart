
import 'dart:convert';

BitacoraModel bitacoraModelFromJson(String str) => BitacoraModel.fromJson(json.decode(str));

String bitacoraModelToJson(BitacoraModel data) => json.encode(data.toJson());

class BitacoraModel {
    BitacoraModel({
        this.bitacora,
        this.fecha,
    });

    List<Bitacora> bitacora;
    String fecha;

    factory BitacoraModel.fromJson(Map<String, dynamic> json) => BitacoraModel(
        bitacora: List<Bitacora>.from(json["bitacora"].map((x) => Bitacora.fromJson(x))),
        fecha: json["fecha"],
    );

    Map<String, dynamic> toJson() => {
        "bitacora": List<dynamic>.from(bitacora.map((x) => x.toJson())),
        "fecha": fecha,
    };
}

class Bitacora {
    Bitacora({
        this.title,
        this.subtitle,
        this.tipo,
        this.fecha,
        this.hora,
        this.description,
    });

    String title;
    String subtitle;
    String tipo;
    String fecha;
    String hora;
    String description;

    factory Bitacora.fromJson(Map<String, dynamic> json) => Bitacora(
        title: json["title"],
        subtitle: json["subtitle"],
        tipo: json["tipo"],
        fecha: json["fecha"],
        hora: json["hora"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "tipo": tipo,
        "fecha": fecha,
        "hora": hora,
        "description": description,
    };
}