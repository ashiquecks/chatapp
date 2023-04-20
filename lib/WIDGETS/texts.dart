import 'package:chatapp/const.dart';
import 'package:flutter/cupertino.dart';

Widget boldText({
  required String labelText,
}) {
  return Text(
    labelText,
    style: const TextStyle(fontWeight: FontWeight.bold),
  );
}

Widget colorText({
  required String labelText,
}) {
  return Text(
    labelText,
    style: const TextStyle(color: colorPrimary, fontSize: 12),
  );
}
