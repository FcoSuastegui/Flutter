import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:PipoVigilante/src/views/acceso/bloc/acceso_vehiculo_bloc.dart';
import 'package:PipoVigilante/src/views/acceso/components/acceso_car_information_form.dart';
import 'package:PipoVigilante/src/views/acceso/components/acceso_footer_form.dart';
import 'package:PipoVigilante/src/views/acceso/components/acceso_header_form.dart';
import 'package:PipoVigilante/src/views/acceso/components/acceso_photos_form.dart';
import 'package:PipoVigilante/src/widgets/buttons/button_rectangle_submit.dart';
import 'package:PipoVigilante/src/widgets/loading/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:get/get.dart';

class AccesoVehiculoForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccesoVehiculoBloc(),
      child: Builder(
        builder: (context) {
          final acceso = context.bloc<AccesoVehiculoBloc>();
          return FormBlocListener<AccesoVehiculoBloc, String, String>(
            onSubmitting: (context, state) => LoadingDialog.show(context),
            onSuccess: (context, state) {
              LoadingDialog.hide(context);
              Get.offAndToNamed('/home');
              acceso.close();
            },
            onFailure: (context, state) async {
              LoadingDialog.hide(context);
              Get.snackbar(
                'Pipo Policia',
                state.failureResponse,
                colorText: Colors.white,
                backgroundColor: Colors.red,
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AccesoHeaderForm(
                  calle: acceso.calle,
                  interior: acceso.interior,
                  visita: acceso.visita,
                  motivo: acceso.motivo,
                  visitante: acceso.visitante,
                ),
                AccesoCarInformationForm(
                  placa: acceso.placa,
                  marca: acceso.marca,
                  modelo : acceso.modelo ,
                  color: acceso.color,
                  personas: acceso.personas,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20.0),
                ),
                AccesoPhotosForm(
                  vehiculo: true,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(30.0),
                ),
                AccesoFooterForm(
                  comentario: acceso.comentario,
                  ingreso: acceso.ingreso,
                  aviso: acceso.aviso,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(40.0),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ButtonRectangleSubmit(
                    submit: acceso.submit,
                    width: 0.3,
                    text: 'Continuar',
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20.0),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
