

import 'package:flutter/material.dart';

class ContactMeDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Here you go.."),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Phone: +91 97043 03920"),
          Text("Email: akaankshk@gmail.com")
        ],
      ),
    );
  }
}
