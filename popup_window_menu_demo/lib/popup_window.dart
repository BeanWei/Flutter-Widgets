import 'package:flutter/material.dart';
import 'label_below_icon.dart';
import 'dart:ui';

class PopDialog extends Dialog {
  double margin_value;
  @override
  Widget build(BuildContext context) {
    return new Material(
      type: MaterialType.transparency,
//      child: new ClipRect(
//        child: new BackdropFilter(
//          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
//          child: Opacity(
//            opacity: 0.5,
//            child: new Container(
//              width: MediaQuery.of(context).size.width,
//              height: MediaQuery.of(context).size.height,
//              decoration: new BoxDecoration(
//                color: Colors.grey.shade200,
//                //color: Colors.grey.shade200.withOpacity(0.5),
//              ),
//              child: new Padding(
//                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height - 216.0),
//                child: _buildMoreMenu(context),
//              ),
//            ),
//          ),
//        ),
//      ),
      child: new SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: new Container(
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0.0)
              ),
            ),
          ),
          //child: _buildMoreMenu(context),
          child: new Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height - 216.0),
            child: _buildMoreMenu(context),
          ),
        ),
      ),
    );
  }



  Widget _buildMoreMenu(BuildContext context) {
    var actionMenusRow = new Row(
      children: <Widget>[
        new FittedBox(
          fit: BoxFit.contain,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              LabelBelowIcon(
                label: '扫一扫',
                icon: Icons.center_focus_strong,
                circleColor: Colors.lightGreen,
                onPressed: null,
                betweenHeight: 14.0,
              ),
              LabelBelowIcon(
                label: '分享',
                icon: Icons.link,
                circleColor: Colors.lightGreen,
                onPressed: null,
                betweenHeight: 14.0,
              ),
              LabelBelowIcon(
                label: '截图',
                icon: Icons.crop,
                circleColor: Colors.lightGreen,
                onPressed: null,
                betweenHeight: 14.0,
              )
            ],
          ),
        ),
      ],
    );

    var closeBarRow = new Row(
      children: <Widget>[
        new Expanded(
          child: new FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            tooltip: "关闭",
            child: Icon(Icons.close),
          ),
        )
      ],
    );

    return new Row(
      children: <Widget>[
        new Expanded(
          flex: 1,
          child: new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                actionMenusRow,
                closeBarRow,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
