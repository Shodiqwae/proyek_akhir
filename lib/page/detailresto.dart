import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyek_akhir/model/restraurant_place.dart';
import 'package:proyek_akhir/widget/detail_widget.dart';

class Detail_Page extends StatelessWidget {
  final RestaurantPlace place;
  const Detail_Page({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRect(
              child: Stack(
                children: [
                  Image.asset(place.images,),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 35, left: 30),
                  child: Text(
                    place.name,
                    style:
                        TextStyle(fontSize: 30, fontFamily: "Montserrat-Bold"),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    place.detaillocation,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 5),
                  child: Text(
                    place.times,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Detail_Widget(),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.zero, // Mengatur border radius menjadi nol
                    ), backgroundColor: Color.fromARGB(255, 7, 125, 37),
                    minimumSize: Size(300, 60), // Mengatur warna latar belakang menjadi hijau
                  ),
                  child: Text(
                    "Book a Table",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
