import 'package:flutter/material.dart';
import 'package:direct_select_flutter/direct_select_item.dart';
import 'package:direct_select_flutter/direct_select_list.dart';

class DefaultSelect extends StatelessWidget {
  final buttonPadding = const EdgeInsets.fromLTRB(0, 8, 0, 0);

  final List<String> data;
  final String label;

  DefaultSelect({@required this.data, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: AlignmentDirectional.centerStart,
          margin: EdgeInsets.only(left: 4),
          child: Text(label),
        ),
        Padding(
          padding: buttonPadding,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 0.0,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 15.0,
                ),
              ],
            ),
            child: Card(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      child: DirectSelectList<String>(
                        onItemSelectedListener:
                            (value, selectedIndex, context) {
                          print(value);
                        },
                        values: data,
                        defaultItemIndex: 0,
                        itemBuilder: (String value) => DirectSelectItem<String>(
                          itemHeight: 56,
                          value: value,
                          itemBuilder: (context, value) {
                            return Text(value);
                          },
                        ),
                        focusedItemDecoration: BoxDecoration(
                          border: BorderDirectional(
                            bottom: BorderSide(width: 1, color: Colors.black12),
                            top: BorderSide(width: 1, color: Colors.black12),
                          ),
                        ),
                      ),
                      padding: EdgeInsets.only(left: 12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(
                      Icons.unfold_more,
                      color: Colors.blueAccent,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

}
