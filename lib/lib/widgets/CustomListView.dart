import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 6,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(15),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("assets/infi.png"),
                      fit: BoxFit.cover, // ปรับขนาดรูปภาพให้เต็มพื้นที่ของ Container
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}