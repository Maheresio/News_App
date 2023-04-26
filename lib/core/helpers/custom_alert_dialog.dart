import 'package:flutter/material.dart';

AlertDialog customAlertDialog(BuildContext context) {
  return AlertDialog(
    title: const Text("Confirm"),
    content: const Text("Are you sure you wish to delete this item?"),
    actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.of(context).pop(true),
        child: const Text("DELETE"),
      ),
      TextButton(
        onPressed: () => Navigator.of(context).pop(false),
        child: const Text("CANCEL"),
      ),
    ],
  );
}
