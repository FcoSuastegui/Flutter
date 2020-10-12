import 'package:PipoVigilante/src/themes/app_theme.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DropSearchField extends StatelessWidget {
  final String errorText, label;
  final bool showSelectedItem, showClearButton;
  final List<String> items;
  final ValueChanged<String> onChanged, popupItemDisabled;

  DropSearchField({
    Key key,
    @required this.label,
    @required this.items,
    this.errorText,
    this.showSelectedItem = true,
    this.showClearButton = false,
    this.onChanged,
    this.popupItemDisabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      child: DropdownSearch<String>(
        dropdownSearchDecoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.kPrimaryColor,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.kPrimaryColor,
            ),
          ),
          errorText: errorText,
        ),
        mode: Mode.MENU,
        showSelectedItem: showSelectedItem,
        items: items,
        label: label,
        showClearButton: showClearButton,
        onChanged: onChanged,
        popupItemDisabled: popupItemDisabled,
        //popupItemDisabled: (String s) => s.startsWith('I'),
      ),
    );
  }
}
