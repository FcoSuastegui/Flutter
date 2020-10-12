import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:PipoVigilante/src/views/acceso/controller/acceso_controller.dart';
import 'package:PipoVigilante/src/widgets/fields/deafult_text_field_rectangle_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:get/get.dart';

class AccesoFooterForm extends GetView<AccesoController> {
  final TextFieldBloc<Object> comentario;
  final SelectFieldBloc<dynamic, dynamic> ingreso;
  final BooleanFieldBloc<Object> aviso;
  AccesoFooterForm({
    @required this.aviso,
    @required this.ingreso,
    this.comentario,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ingreso.updateValue('si');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CheckboxFieldBlocBuilder(
          booleanFieldBloc: aviso,
          padding: EdgeInsets.zero,
          controlAffinity: FieldBlocBuilderControlAffinity.trailing,
          body: Container(
            padding: EdgeInsets.zero,
            alignment: Alignment.centerLeft,
            child: Text('Se dio aviso al propietario'),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(10.0),
        ),
        Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '¿Se dio acceso?',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 16.0,
                ),
              ),
            ),
            Obx(
              () => Row(
                children: [
                  Expanded(
                    child: RadioListTile<String>(
                      title: Text('Si'),
                      value: 'si',
                      groupValue: controller.ingreso.value,
                      onChanged: (String v) {
                        ingreso.updateValue(v);
                        controller.onIngreso(v);
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<String>(
                      title: Text('No'),
                      value: 'no',
                      groupValue: controller.ingreso.value,
                      onChanged: (String v) {
                        ingreso.updateValue(v);
                        controller.onIngreso(v);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(30.0),
        ),
        DefaultTextFieldRectangleBloc(
          hintText: "Detalles / Comentario",
          textFieldBloc: comentario,
          maxLines: 3,
        ),
      ],
    );
  }
}
