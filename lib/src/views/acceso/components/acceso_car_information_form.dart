import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:PipoVigilante/src/widgets/fields/deafult_text_field_rectangle_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class AccesoCarInformationForm extends StatelessWidget {
  final TextFieldBloc<Object> placa;
  final TextFieldBloc<Object> marca;
  final TextFieldBloc<Object> modelo;
  final TextFieldBloc<Object> color;
  final TextFieldBloc<Object> personas;
  const AccesoCarInformationForm({
    Key key,
    @required this.placa,
    @required this.marca,
    @required this.modelo,
    @required this.color,
    @required this.personas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: getProportionateScreenHeight(20.0),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: DefaultTextFieldRectangleBloc(
                hintText: 'Marca',
                textFieldBloc: marca,
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              width: getProportionateScreenHeight(10.0),
            ),
            Expanded(
              child: DefaultTextFieldRectangleBloc(
                hintText: 'Modelo',
                textFieldBloc: modelo,
                keyboardType: TextInputType.text,
              ),
            ),
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(10.0),
        ),
        DefaultTextFieldRectangleBloc(
          hintText: 'No. Placa',
          textFieldBloc: placa,
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
                hintText: 'color',
                textFieldBloc: color,
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              width: getProportionateScreenHeight(10.0),
            ),
            Expanded(
              child: DefaultTextFieldRectangleBloc(
                hintText: 'No de personas',
                textFieldBloc: personas,
                keyboardType: TextInputType.number,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
