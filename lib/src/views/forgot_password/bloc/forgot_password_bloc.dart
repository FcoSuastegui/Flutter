import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:PipoVigilante/src/helper/validator_string_bloc.dart';

class ForgotPassWordBloc extends FormBloc<String, String> {
  final email = TextFieldBloc(
    validators: [
      ValidatorStringBloc.required,
      ValidatorStringBloc.emailFormat
    ]
  );
  ForgotPassWordBloc() {
    addFieldBlocs(
      fieldBlocs: [email],
    );
  }

  @override
  void onDeleting() {
    email?.close();
    super.onDeleting();
  }

  @override
  void onSubmitting() async {
    await Future<void>.delayed(Duration(seconds: 1));
    emitSuccess();
  }
}
