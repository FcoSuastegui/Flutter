import 'dart:convert';

ResponseModel responseModelFromJson(String str) => ResponseModel.fromJson(json.decode(str));

String responseModelToJson(ResponseModel data) => json.encode(data.toJson());

class ResponseModel {
  bool status;
  dynamic data;
  dynamic message;

  ResponseModel({
      this.status,
      this.data,
      this.message,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
      status  : json["status"],
      data    : json["data"] ?? '',
      message : json["message"] ?? '',
  );

  Map<String, dynamic> toJson() => {
      "status"  : status,
      "data"    : data,
      "message" : message,
  };
}
