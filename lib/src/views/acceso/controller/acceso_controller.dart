import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AccesoController extends GetxController {
  RxString _ingreso = 'si'.obs;
  RxString get ingreso => _ingreso;
  void onIngreso(String value) => _ingreso.value = value;

  ImagePicker _picker = ImagePicker();

  File _identificacion;
  File get identificacion => _identificacion;

  Future<bool> openIdentificacion() async {
    final picture = await _picker.getImage(
      source: ImageSource.camera,
      maxHeight: 200,
      maxWidth: 200,
    );
    _identificacion = picture != null ? File(picture.path) : null;
     update(['identificacion']);  
    return picture == null ? false : true;
  }

  void deletePhotoIdentificacion() {
    _identificacion = null;
    update(['identificacion']);  
  } 

  File _persona;
  File get persona => _persona;

  Future<bool> openPersona() async {
    final picture = await _picker.getImage(
      source: ImageSource.camera,
      maxHeight: 200,
      maxWidth: 200,
    );
    _persona = picture != null ? File(picture.path) : null;
    update(['persona']);  
    return picture == null ? false : true;
  }

  void deletePhotoPersona() {
    _persona = null;
    update(['persona']);  
  } 

  File _vehiculo;
  File get vehiculo => _vehiculo;

  Future<bool> openVehiculo() async {
    final picture = await _picker.getImage(
      source: ImageSource.camera,
      maxHeight: 200,
      maxWidth: 200,
    );
    _vehiculo = picture != null ? File(picture.path) : null;
    update(['vehiculo']);  
    return picture == null ? false : true;
  }

  void deletePhotoVehiculo() {
    _vehiculo = null;
    update(['vehiculo']);  
  } 
}
