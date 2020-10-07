import 'package:PipoVigilante/src/widgets/listtile/default_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/themes/app_theme.dart';

class HomeAccesos extends StatelessWidget {
  const HomeAccesos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Enlaces directos:',
          style: TextStyle(
            color: AppTheme.kPrimaryColor,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        DefaultListTile(
          text: 'Bitácora',
          top: 10.0,
          bottom: 10.0,
          trailing: Icons.book,
        ),
        DefaultListTile(
          text: 'Control',
          bottom: 10.0,
          trailing: Icons.pan_tool,
        ),
        DefaultListTile(
          text: 'Proveedores',
          bottom: 10.0,
          trailing: Icons.local_shipping_outlined,
        ),
        DefaultListTile(
          text: 'Directorio',
          bottom: 10.0,
          trailing: Icons.menu_book,
        ),
        DefaultListTile(
          text: 'Incidencias',
          bottom: 10.0,
          trailing: Icons.new_releases,
        ),
      ],
    );
  }
}
