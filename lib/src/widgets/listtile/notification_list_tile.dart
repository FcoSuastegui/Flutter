import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/themes/app_theme.dart';

class NotificationListTile extends StatelessWidget {
  final IconData leading, trailing;
  final String text, subtext;
  final Color color;
  final Widget widget;
  final Function onPress, onChange, confirmDismiss;
  final double top, bottom;
  final bool boxshadow;

  NotificationListTile({
    @required this.text,
    this.confirmDismiss,
    this.onPress,
    this.onChange,
    this.leading,
    this.trailing,
    this.widget,
    this.subtext,
    this.top = 0.0,
    this.bottom = 0.0,
    this.boxshadow = true,
    this.color = AppTheme.kPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onPress,
      child: Dismissible(
        key: UniqueKey(),
        confirmDismiss: confirmDismiss,
        child: Container(
          height: height * 0.08,
          margin: EdgeInsets.only(top: top, bottom: bottom),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              leading != null
                  ? Container(
                      child: Icon(leading, color: color),
                      margin: EdgeInsets.only(left: 20.0),
                    )
                  : Container(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width,
                      margin: EdgeInsets.only(left: 20.0),
                      child: Text(
                        text,
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ),
                    subtext != null
                        ? Container(
                            margin: EdgeInsets.only(left: 20.0),
                            child: Text(
                              subtext,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
              trailing != null
                  ? Container(
                      child: Icon(trailing, color: color),
                      margin: EdgeInsets.only(right: 20.0),
                    )
                  : Container(),
              widget != null
                  ? Container(
                      child: widget, margin: EdgeInsets.only(right: 20.0))
                  : Container(),
            ],
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: [0.020, 0.015],
              colors: [AppTheme.kPrimaryColor, Colors.white],
            ),
            boxShadow: boxshadow
                ? [BoxShadow(blurRadius: 3.0, color: Colors.grey[400])]
                : [],
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
            border: Border.all(
              width: 0.3,
              color: boxshadow ? Colors.grey[200] : Colors.grey[800],
            ),
          ),
        ),
      ),
    );
  }
}
