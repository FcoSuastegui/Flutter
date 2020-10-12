import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:PipoVigilante/src/views/acceso/bloc/acceso_peatonal_bloc.dart';
import 'package:PipoVigilante/src/views/acceso/components/acceso_footer_form.dart';
import 'package:PipoVigilante/src/views/acceso/components/acceso_header_form.dart';
import 'package:PipoVigilante/src/views/acceso/components/acceso_herramienta_form.dart';
import 'package:PipoVigilante/src/views/acceso/components/acceso_photos_form.dart';
import 'package:PipoVigilante/src/widgets/buttons/button_rectangle_submit.dart';
import 'package:PipoVigilante/src/widgets/loading/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:get/get.dart';

class AccesoPeatonalForm extends StatelessWidget {
  const AccesoPeatonalForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccesoPeatonalBloc(),
      child: Builder(
        builder: (context) {
          final acceso = context.bloc<AccesoPeatonalBloc>();
          return FormBlocListener<AccesoPeatonalBloc, String, String>(
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
                AccesoHerramientaForm(
                  descHerr: acceso.descHerr,
                  herra: acceso.herra,
                ),
                AccesoPhotosForm(),
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
                    width: 0.3,
                    submit: acceso.submit,
                    text: 'Continuar',
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(30.0),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
