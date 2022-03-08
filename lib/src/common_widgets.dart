import 'package:flutter/material.dart';
import 'package:coarse_widgets/coarse_widgets.dart';

class CommonWidgets {
  late BuildContext _ctx;

  CommonWidgets(this._ctx);

  void updateContext(BuildContext context) {
    _ctx = context;
  }

  // General App Bar for the whole app.
  AppBar appBar({
    required String title,
    TextStyle style = const TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
  }) {
    return AppBar(
      title: Text(
        title,
        style: style,
      ),
      backgroundColor: Theme.of(_ctx).primaryColor,
    );
  }

  Widget iaLoader() => CommonLoader(
        color: Theme.of(_ctx).primaryColor,
      );
}
