import 'package:PipoVigilante/src/widgets/fields/deafult_text_field_rectangle_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class AccesoHerramientaForm extends StatelessWidget {
  final TextFieldBloc<Object> descHerr;
  final BooleanFieldBloc<Object> herra;

  const AccesoHerramientaForm({
    Key key,
    @required this.herra,
    @required this.descHerr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CheckboxFieldBlocBuilder(
          booleanFieldBloc: herra,
          padding: EdgeInsets.zero,
          controlAffinity: FieldBlocBuilderControlAffinity.trailing,
          body: Container(
            padding: EdgeInsets.zero,
            alignment: Alignment.centerLeft,
            child: Text('Ingresa con alguna herramienta'),
          ),
        ),
        DefaultTextFieldRectangleBloc(
          hintText: '¿ Descripción de lo que ingresa / No. de serie',
          textFieldBloc: descHerr,
          keyboardType: TextInputType.text,
        ),
      ],
    );
  }
}
