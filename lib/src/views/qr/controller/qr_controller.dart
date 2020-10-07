import 'package:barcode_scan/barcode_scan.dart';
import 'package:PipoVigilante/src/data/models/response_model.dart';
import 'package:PipoVigilante/src/data/models/qr_model.dart';
import 'package:PipoVigilante/src/data/services/qr_service.dart';
import 'package:flutter/services.dart';

class QrController {
  List<BarcodeFormat> selectedFormats = [BarcodeFormat.qr];
  int _selectedCamera = -1;
  bool _autoEnableFlash = false;
  double _aspectTolerance = 0.00;
  bool _useAutoFocus = true;

  Future<ResponseModel> scanCamara() async {
    ResponseModel response;
    try {
      final ScanOptions options = ScanOptions(
        strings: {
          "cancel": "cancelar",
          "flash_on": "flash on",
          "flash_off": "flash off",
        },
        restrictFormat: selectedFormats,
        useCamera: _selectedCamera,
        autoEnableFlash: _autoEnableFlash,
        android: AndroidOptions(
          aspectTolerance: _aspectTolerance,
          useAutoFocus: _useAutoFocus,
        ),
      );

      final ScanResult result = await BarcodeScanner.scan(options: options);
      print(result.rawContent);
      if (result.type == ResultType.Cancelled) {
        response = ResponseModel(
          status: false,
          data: result.type,
          message: "Se ha cancelado el scanner",
        );
      } else {
        final QrModel validator = await QrService().validarQr();
        response = ResponseModel(
          status: true,
          data: validator,
        );
      }
    } on PlatformException catch (e) {
      final ScanResult result = ScanResult(
        type: ResultType.Error,
        format: BarcodeFormat.unknown,
      );

      response = ResponseModel(
        status: false,
        data: result.type,
        message: e.code == BarcodeScanner.cameraAccessDenied
            ? "La aplicacion no tiene permiso de camara"
            : 'Error Desconocido: $e',
      );
    }
    return response;
  }
}
