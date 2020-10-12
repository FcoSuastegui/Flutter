import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:PipoVigilante/src/widgets/fields/deafult_text_field_rectangle_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class AccesoHeaderForm extends StatelessWidget {
  final TextFieldBloc<Object> visita;
  final TextFieldBloc<Object> calle;
  final TextFieldBloc<Object> interior;
  final TextFieldBloc<Object> visitante;
  final TextFieldBloc<Object> motivo;
  const AccesoHeaderForm({
    Key key,
    @required this.visita,
    @required this.calle,
    @required this.interior,
    @required this.visitante,
    @required this.motivo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DefaultTextFieldRectangleBloc(
          hintText: '¿ A quien visita? / Familia',
          textFieldBloc: visita,
          keyboardType: TextInputType.text,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10.0),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: DefaultTextFieldRectangleBloc(
                hintText: 'Calle/Andador/Torre',
                textFieldBloc: calle,
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              width: getProportionateScreenHeight(10.0),
            ),
            Expanded(
              child: DefaultTextFieldRectangleBloc(
                hintText: 'No: Casa/Villa/Depto',
                textFieldBloc: interior,
                keyboardType: TextInputType.text,
              ),
            ),
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(10.0),
        ),
        DefaultTextFieldRectangleBloc(
          hintText: 'Nombre completo / Visitante',
          textFieldBloc: visitante,
          keyboardType: TextInputType.text,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10.0),
        ),
        DefaultTextFieldRectangleBloc(
          hintText: '¿Cuál es el motivo de la visita?',
          textFieldBloc: motivo,
          keyboardType: TextInputType.text,
        ),
      ],
    );
  }
}
