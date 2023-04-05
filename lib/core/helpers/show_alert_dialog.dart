import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

showAlertDialog(BuildContext context, VoidCallback? onPressed) {
  // set up the button
  Widget yesButton = TextButton(
    onPressed: () {
      onPressed;
      GoRouter.of(context).pop();
    },
    child: const Text("Yes"),
  );
  Widget noButton = TextButton(
    child: const Text("No"),
    onPressed: () {
      GoRouter.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Delete an item"),
    content: const Text("Are you sure ?"),
    actions: [
      yesButton,
      noButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
