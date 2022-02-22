import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController inputPertama = TextEditingController();
  TextEditingController inputKedua = TextEditingController();
  int? hasil = 0, input1 = 0, input2 = 0;

  add() {
    setState(() {
      input1 = int.parse(inputPertama.text);
      input2 = int.parse(inputKedua.text);
      hasil = input1! + input2!;
    });
  }

  kurang() {
    setState(() {
      input1 = int.parse(inputPertama.text);
      input2 = int.parse(inputKedua.text);
      hasil = input1! - input2!;
    });
  }

  kali() {
    setState(() {
      input1 = int.parse(inputPertama.text);
      input2 = int.parse(inputKedua.text);
      hasil = input1! * input2!;
    });
  }

  bagi() {
    setState(() {
      input1 = int.parse(inputPertama.text);
      input2 = int.parse(inputKedua.text);
      hasil = input1! ~/ input2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Hasil Perhitungan : ',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: inputPertama,
              decoration: InputDecoration(
                  labelText: 'Input Pertama',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: inputKedua,
              decoration: InputDecoration(
                  labelText: 'Input Kedua',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('x')),
                ElevatedButton(onPressed: () {}, child: Text('/')),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('+')),
                ElevatedButton(onPressed: () {}, child: Text('-')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
