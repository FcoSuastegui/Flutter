import 'package:PipoVigilante/src/data/models/control_model.dart';
import 'package:PipoVigilante/src/data/services/control_service.dart';
import 'package:get/get.dart';

class ControlController extends GetxController {
  RxList<ControlModel> _listControl = List<ControlModel>().obs;
  RxList<ControlModel> get listControl => _listControl;

  ControlModel _controlSelected;
  ControlModel get controlSelected => _controlSelected;

  void selectControl(ControlModel control) => _controlSelected = control;

  RxBool _loading = false.obs;
  RxBool get loading => _loading;

  @override
  void onInit() {
    getListControl();
    super.onInit();
  }

  Future<void> getListControl() async {
    _loading(true);
    _listControl.clear();
    _listControl.value = await ControlService().getData();
    _loading(false);
  }
}
