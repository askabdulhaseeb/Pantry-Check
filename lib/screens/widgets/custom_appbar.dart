import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget? customAppbar(BuildContext context, String? title) {
  return AppBar(
    title: (title == null) ? Text('') : Text(title),
  );
}
