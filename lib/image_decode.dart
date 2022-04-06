
import 'dart:convert';
import 'package:flutter/material.dart';

Widget getImageBase64({String image}) {
  var imageBase64 = image;
  const Base64Codec base64 = Base64Codec();
  if (imageBase64 == null) return new Container();
  var bytes = base64.decode(imageBase64);
  return Image.memory(
    bytes,
    width: 200,
    fit: BoxFit.cover,

  );
}
