import 'package:flutter/material.dart';
import 'package:proyek_akhir/model/restraurant_place.dart';
import 'package:proyek_akhir/page/detailresto.dart';

class NearWidget extends StatefulWidget {
  const NearWidget({super.key});

  @override
  State<NearWidget> createState() => _NearWidgetState();
}

class _NearWidgetState extends State<NearWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.only(left: 20),
            height: 230,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: restaurantplace.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final RestaurantPlace place = restaurantplace[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail_Page(place: place,)));
                  },
                  child: Card(
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 220,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(place.images,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Container(
                            margin: EdgeInsets.only(left: 15,top: 10),
                            child: Text(place.name,style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Montserrat-Bold"
                            ),)),
                          ]
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Container(
                            margin: EdgeInsets.only(left: 15,top: 5),
                            child: Text(place.locations,style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Montseerat-Regular"
                            ),)),
                          ]
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          );
  }
}