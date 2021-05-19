import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_sayi_tahmin/input.dart';

class OyunKayipEkran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Colors.black,
              height: 1.8,
            ),
            preferredSize: Size.fromHeight(4.0)),
        backgroundColor: Colors.white70,
        title: Text(
          "Sayı Tahmin Uygulaması",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:
          // Ekran aşım uyarısını almamak için scroll özelliği ekledik.
          Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Üzgünüm tahmin hakkın bitti!     ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, height: 2, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  // İkonu resim olarak ekledik
                  Image.asset(
                    'assets/images/sad.png',
                    scale: 13,
                  )
                ],
              ),
              Text(
                "Sayı : $randomValue ",
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 2, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),

              // Tekrar dene buttonu
              ElevatedButton(
                onPressed: () {
                  // tuşa tıklandığında InputEkrani() kısmını açacak, yani oyun sayfasını.
                  randomValue = random.nextInt(11) * 10;
                  debugPrint("Random value : $randomValue");
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => InputEkrani()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white38),
                ),
                child: Text(
                  "Tekrar dene",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
