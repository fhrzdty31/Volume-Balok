import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double panjang = 0, lebar = 0, tinggi = 0, volume1 = 0, volume2 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Volume Balok"),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: TextField(
                  autocorrect: false,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Panjang Balok",
                      suffixText: "cm"),
                  onChanged: (p) {
                    panjang = double.parse(p);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextField(
                  autocorrect: false,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Lebar Balok",
                      suffixText: "cm"),
                  onChanged: (l) {
                    lebar = double.parse(l);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextField(
                  autocorrect: false,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Tinggi Balok",
                      suffixText: "cm"),
                  onChanged: (t) {
                    tinggi = double.parse(t);
                  },
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: TextButton(
                    child: const Text("Hitung Volume"),
                    onPressed: (){
                      setState(() {
                        volume1 = panjang * lebar * tinggi;
                        volume2 = (panjang * lebar * tinggi) / 1000000;
                      });
                    },
                  )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "$volume1 cm3",
                  style: const TextStyle(fontSize: 25),
                )
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "$volume2 m3",
                    style: const TextStyle(fontSize: 25),
                  )
              )
            ],
          )),
    );
  }
}