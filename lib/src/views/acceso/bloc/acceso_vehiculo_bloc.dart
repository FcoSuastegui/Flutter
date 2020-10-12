import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:PipoVigilante/src/helper/validator_string_bloc.dart';

class AccesoVehiculoBloc extends FormBloc<String, String> {
  final visita = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final calle = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final interior = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final visitante = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final motivo = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final descHerr = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final comentario = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final aviso = BooleanFieldBloc();
  final herra = BooleanFieldBloc();
  final placa = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final marca = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final modelo = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final color = TextFieldBloc(validators: [ValidatorStringBloc.required]);
  final personas = TextFieldBloc(validators: [ValidatorStringBloc.required]);

  final ingreso = SelectFieldBloc(
    validators: [ValidatorStringBloc.required],
  );

  AccesoVehiculoBloc() {
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
        placa,
        marca,
        modelo,
        color,
        personas
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
    placa?.close();
    marca?.close();
    modelo?.close();
    color?.close();
    personas?.close();

    return super.close();
  }

  @override
  void onSubmitting() async {
    /* final Map<String, dynamic> _data = {
      'visita' : visita.value,
      'password' : password.value,
    }; */

    print(ingreso.value);

    await Future<void>.delayed(Duration(seconds: 1));
    emitSuccess(canSubmitAgain: true);
  }
}

