import 'package:flutter/material.dart';

class Detail_Widget extends StatelessWidget {
  const Detail_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.only(left: 10),
              height: 190,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 210,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    "https://i.pinimg.com/564x/0c/61/2f/0c612fd62b2669668d4b8ac190d137a7.jpg"),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5, left: 10),
                              child: Text(
                                "Brunch Menu",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5, left: 60),
                              child: Icon(
                                Icons.label_important_outline_sharp,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 212,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    "https://i.pinimg.com/564x/10/66/92/1066924b56aa05f8f47e9a047815197a.jpg"),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5, left: 10),
                              child: Text(
                                "Dinner Menu",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5, left: 70),
                              child: Icon(
                                Icons.label_important_outline_sharp,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}