import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoNavigationBar customAppbar(BuildContext context, String? title) {
  return CupertinoNavigationBar(
    middle: (title == null) ? Text('') : Text(title),
    automaticallyImplyMiddle: true,
    trailing: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.add,
            color: Theme.of(context).primaryColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.search,
            color: Theme.of(context).primaryColor,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            'Edit',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
      ],
    ),
  );
}
