import 'package:PipoVigilante/src/data/models/proveedor_model.dart';
import 'package:PipoVigilante/src/data/services/proveedor_service.dart';
import 'package:get/get.dart';

class ProveedorController extends GetxController {
  RxList<ProveedorModel> _listProveedor = List<ProveedorModel>().obs;
  RxList<ProveedorModel> get listProveedor => _listProveedor;

  ProveedorModel _proveedorSelected;
  ProveedorModel get proveedorSelected => _proveedorSelected;

  void selectProveedor(ProveedorModel proveedor) =>
      _proveedorSelected = proveedor;

  RxBool _loading = false.obs;
  RxBool get loading => _loading;

  @override
  void onInit() {
    getListProveedor();
    super.onInit();
  }

  Future<void> getListProveedor() async {
    _loading(true);
    _listProveedor.clear();
    _listProveedor.value = await ProveedorService().getData();
    _loading(false);
  }
}
