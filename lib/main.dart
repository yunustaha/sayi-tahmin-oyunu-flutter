import 'package:flutter/material.dart';
import 'package:flutter_application_sayi_tahmin/giris.dart';
import 'package:flutter_application_sayi_tahmin/input.dart';

void main() {
  debugPrint("value : " + randomValue.toString());
  debugPrint("value : " + takeValue.getValue);
  runApp(new MaterialApp(
    // Debug simgesini kaldırır
    debugShowCheckedModeBanner: false,
    home: GirisKisim(),
  ));
}
