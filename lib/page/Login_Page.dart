import 'package:flutter/material.dart';
import 'package:proyek_akhir/page/Homepage.dart';

class Input_Page extends StatefulWidget {
  const Input_Page({super.key});

  @override
  State<Input_Page> createState() => _Input_PageState();
}

class _Input_PageState extends State<Input_Page> {
  TextEditingController _usernamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    "assets/images/Kedai.jpg",
                    fit: BoxFit
                        .cover, // untuk memastikan gambar memenuhi lebar dan tinggi yang tersedia
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 32, top: 20),
                  child: Text(
                    "Your Username",
                    style:
                        TextStyle(fontFamily: "Montserrat-Bold", fontSize: 20),
                  ),
                ),
              ],
            ),
            Container(
              width: 350,
              height: 70,
              child: TextFormField(
                controller: _usernamecontroller,
                decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                                'Welcome Booking Restaurant, ${_usernamecontroller.text}'),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));// Tutup dialog saat tombol ditekan
                                },
                                child: Text('Masuk'),
                              ),
                            ],
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius
                          .zero, // Mengatur border radius menjadi nol
                    ), backgroundColor: Color.fromARGB(255, 7, 125,
                        37),
                    minimumSize: Size(300, 60), // Mengatur warna latar belakang menjadi hijau
                  ),
                  child: Text(
                    "Find a restaurant",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernamecontroller.dispose();
    super.dispose();
  }
}
