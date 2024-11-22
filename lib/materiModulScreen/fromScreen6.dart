import 'package:flutter/material.dart';

class FromScreen6 extends StatefulWidget {
  const FromScreen6({super.key});

  @override
  State<FromScreen6> createState() => _FromScreen6State();
}

class _FromScreen6State extends State<FromScreen6> {
  bool switchValue = false;
  bool olahraga = false;
  bool seni = false;
  String selectionRadio = '';
  String nama = '';
  String tampil = 'Selamat Datang';
  String hasil = '';
  String jalan() {
    setState(() {
      hasil = nama;
    });
    return hasil;
  }

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(tampil),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (String value) {
                  setState(() {
                    nama = value;
                  });
                },
                controller: textEditingController,
                decoration: InputDecoration(
                    labelText: 'Masukan Nama',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(5))),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text("Jenis Kelamin : "),
                  Radio(
                      value: "Laki-Laki",
                      groupValue: selectionRadio,
                      onChanged: (value) {
                        setState(() {
                          selectionRadio = value.toString();
                        });
                      }),
                  const Text("Laki-Laki"),
                  Radio(
                      value: "Perempuan",
                      groupValue: selectionRadio,
                      onChanged: (value) {
                        setState(() {
                          selectionRadio = value.toString();
                        });
                      }),
                  const Text("Perempuan"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                  title: const Text('Olahraga'),
                  value: olahraga,
                  onChanged: (value) {
                    setState(() {
                      if (olahraga == false) {
                        olahraga = true;
                      } else {
                        olahraga = false;
                      }
                    });
                  }),
              CheckboxListTile(
                  title: const Text('Seni'),
                  value: seni,
                  onChanged: (value) {
                    setState(() {
                      if (seni == false) {
                        seni = true;
                      } else {
                        seni = false;
                      }
                    });
                  }),
              const SizedBox(
                height: 20,
              ),
              SwitchListTile(
                  title: const Text('Lulus'),
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  }),
              ElevatedButton(
                onPressed: jalan,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: const Text("Submit"),
              ),
              Text(jalan())
            ],
          ),
        ));
  }
}
