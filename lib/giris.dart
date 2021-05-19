import 'package:flutter/material.dart';
import 'package:flutter_application_sayi_tahmin/input.dart';

class GirisKisim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Giriş sayfası oyuna başla buttonunun olduğu kısım
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
      body: Center(
          child: SizedBox(
        width: 250,
        height: 60,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white38),
          ),
          child: Text(
            "Oyuna Başla",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          onPressed: () {
            // tuşa tıklandığında InputEkrani() kısmını açacak, yani oyun sayfasını.
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => InputEkrani()));
          },
        ),
      )),
    );
  }
}
