import 'package:flutter/material.dart';
import 'package:proyek_akhir/page/Login_Page.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            children: [
              Container(
                margin: EdgeInsets.only(left: 28, top: 20),
                child: Text(
                  "Book your table in",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Montserrat-Bold",
                      fontSize: 30),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 28),
                child: Text(
                  "a fews clicks",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Montserrat-Bold",
                      fontSize: 30),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 28, top: 15),
                child: Text(
                  "Hundreds of restaurant with the best",
                  style: TextStyle(
                      fontFamily: "Montseerat-Regular", fontSize: 16.8),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 28),
                child: Text(
                  "reviews are waiting for you",
                  style: TextStyle(
                      fontFamily: "Montseerat-Regular", fontSize: 16.8),
                ),
              )
            ],
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Input_Page()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.zero, // Mengatur border radius menjadi nol
                  ), backgroundColor: Color.fromARGB(255, 7, 125, 37),
                  minimumSize: Size(300, 60), // Mengatur warna latar belakang menjadi hijau
                ),
                child: Text(
                  "Find a restaurant",
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
