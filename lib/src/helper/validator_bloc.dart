import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class ValidatorBloc {
  
  static final ValidatorBloc _validatorBloc  = new ValidatorBloc._internal();
  factory ValidatorBloc() => _validatorBloc;
  ValidatorBloc._internal(); 
  
  static Validator<dynamic> requiredField(dynamic textFieldBloc) => (dynamic textField) => (textField == null || textField.isEmpty) ? 'El campo es requerido' : null;
  static Validator<dynamic> requiredDateTime( InputFieldBloc inputFieldBloc) => (dynamic textField) => (textField == null ) ? 'El campo es requerido' : null;
  
  static Validator<DateTime> validDate(InputFieldBloc inputFieldBloc) => (DateTime textField) => 
    (DateTime.now().day <= textField.day && DateTime.now().month <= textField.month) ? null : 'La fecha seleccionada debe ser mayor';

  static Validator<String> emailFormat(TextFieldBloc emailTextFieldBloc) => 
    (String email) => RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                      .hasMatch(email) ? null : 'El formato de correo electronico es incorrecto';
  
  static Validator<String> numeroCelular(TextFieldBloc textFieldBloc) => 
    (String celphone) => RegExp(r'^\d{3}\s\d{4}\s\d{3}$')
                      .hasMatch(celphone) ? null : 'Número de celular no válido';
  
  static Validator<String> onlyNumber( TextFieldBloc textFieldBloc ) => 
    (String textField ) => RegExp(r'^[0-9]+$').hasMatch(textField) ? null : 'Sólo número';
  
  static Validator<String> validateText( TextFieldBloc textFieldBloc ) => 
    (String textField ) =>  RegExp(r'^[a-zA-Z]').hasMatch(textField) ? null : 'Sólo texto';

  static Validator<String> minLength( TextFieldBloc textFieldBloc, int length) => 
    ( String textField ) => ( textField.length < length ) ? "El campo debe tener minimo $length caracteres" : null;

  static Validator<String> maxLength( TextFieldBloc textFieldBloc, int length)  => 
    ( String textField ) => ( textField.length > length ) ? "El campo debe tener máximo $length caracteres" : null;
  
  static Validator<String> confirmPassword( TextFieldBloc password ) => 
    ( String passwordConfirm ) => ( passwordConfirm != password.value ) ? "Debe ser igual a la contraseña" : null;

  // Validaciones de número de tarjeta
  static Validator<String> validateName( TextFieldBloc textFieldBloc ) => 
    (String textField ) =>  RegExp(r'^[a-zA-Z]').hasMatch(textField) ? null : 'Ingresa un nombre válido';

  static Validator<String> validateContact( TextFieldBloc textFieldBloc ) => 
    (String textField ) => RegExp(r'^([0-9]+$)|(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                            .hasMatch(textField) ? null : 'Solo número de celular o correo eléctronico';
  
  static Validator<String> validateCardNumber( TextFieldBloc textFieldBloc ) => 
    (String cardNumber) => RegExp(r'^(?:4[0-9]{12}(?:[0-9]{3})?|[25][1-7][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$')
      .hasMatch(cardNumber.replaceAll(RegExp(r'\s+\b|\b\s'), '')) ? null : 'Ingrese un número de tarjeta correcta';
  
  static Validator<String> validateCardMonth( TextFieldBloc textFieldBloc ) => 
    (String textField ) => (textField.isNotEmpty && int.parse(textField) > 0 && int.parse(textField) < 13) ? null : 'Mes incorrecto';

  static Validator<String> validateCardYear( TextFieldBloc textFieldBloc ) => 
    (String textField ) => (textField.isNotEmpty && int.parse(textField) > 2000 && int.parse(textField) < 2028) ? null : 'Año incorrecto';

  static Validator<String> validateCardCvv( TextFieldBloc textFieldBloc ) => 
    (String textField ) => (textField.length == 3 ) ? null : 'CVV incorrecto';
  
  static Validator<String> validateCardValidThru( TextFieldBloc textFieldBloc ) => 
    (String textField ) => RegExp(r'^(0[1-9]|1[0-2])\/([2-9][0-9])$').hasMatch(textField) ? null : 'ValidThru incorrecto';


}


