import 'package:PipoVigilante/src/views/acceso/controller/acceso_controller.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:PipoVigilante/src/helper/validator_string_bloc.dart';
import 'package:get/get.dart';

class AccesoPeatonalBloc extends FormBloc<String, String> {
  final AccesoController acceso = Get.find<AccesoController>();
  final visita = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final calle = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final interior = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final visitante = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final motivo = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final descHerr = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final comentario = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final aviso = BooleanFieldBloc();
  final herra = BooleanFieldBloc();

  final ingreso = SelectFieldBloc();

  AccesoPeatonalBloc() {
    addFieldBlocs(
      fieldBlocs: [
        visita,
        calle,
        interior,
        visitante,
        motivo,
        comentario,
        ingreso,
        aviso,
        herra,
      ],
    );

    herra.onValueChanges(
      onData: (previous, current) async* {
        removeFieldBlocs(
          fieldBlocs: [
            descHerr,
          ],
        );

        current.value
            ? addFieldBlocs(fieldBlocs: [
                descHerr,
              ])
            : removeFieldBlocs(fieldBlocs: [descHerr]);
      },
    );
  }

  @override
  Future<void> close() {
    visita?.close();
    calle?.close();
    interior?.close();
    visitante?.close();
    motivo?.close();
    descHerr?.close();
    comentario?.close();
    ingreso?.close();
    aviso?.close();

    return super.close();
  }

  @override
  void onSubmitting() async {
    /* final Map<String, dynamic> _data = {
      'visita' : visita.value,
      'password' : password.value,
    }; */
    await Future<void>.delayed(Duration(seconds: 1));

    if (acceso.identificacion == null) {
      emitFailure(
        failureResponse: 'Es necesario subir la foto de identificación',
      );
      return;
    }
    if (acceso.persona == null) {
      emitFailure(
        failureResponse: 'Es necesario subir la foto de la persona',
      );
      return;
    }

    print(ingreso.value);

    emitSuccess(canSubmitAgain: true);
  }
}
