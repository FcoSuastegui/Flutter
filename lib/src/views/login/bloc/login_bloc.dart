
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:PipoVigilante/src/helper/validator_string_bloc.dart';

class LoginBloc extends FormBloc<String, String> {
  final username = TextFieldBloc(
    validators: [
      ValidatorStringBloc.required,
      ValidatorStringBloc.emailFormat
    ]
  );
  final password = TextFieldBloc(
    validators: [
      ValidatorStringBloc.required
    ]
  );

  LoginBloc() {
    addFieldBlocs(
      fieldBlocs: [username, password],
    );
  }

  @override
  void onDeleting() {
    username?.close();
    password?.close();
    super.onDeleting();
  }

  @override
  void onSubmitting() async {
    /* final Map<String, dynamic> _data = {
      'username' : username.value,
      'password' : password.value,
    }; */

    await Future<void>.delayed(Duration(seconds: 1));
    emitSuccess();
  }
}
