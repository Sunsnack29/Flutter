import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';

class infinity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size; 
      return Scaffold (
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            Image.asset("assets/infi.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: _size.height / 1.25,),

            Container(height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.white,
              ],
              stops: [
                0.4,
                0.7,
              ],
              )
            ),),
            Container(
              padding: EdgeInsets.only(left: 15 , top: 45),
              child: IconButton(
                icon: Icon(CupertinoIcons.back),
                onPressed: () {
                  Navigator.pop(context);
                },),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: Container(
                    color: Colors.white.withOpacity(0.65),
                    padding: EdgeInsets.all(35),
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Infinity",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "กำแพงแสน",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "โครงการที่พักเกรด Premium คุณภาพเหนือระดับ พร้อมสิ่งอำนวยความสะดวกเทียบเท่าคอนโดเมือง",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                       SizedBox(height: 25),
                       Row(
                        children: [
                          Icon(CupertinoIcons.map,
                          color: Colors.black26,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "อำเภอ กำแพงแสน จังหวัด นครปฐม ",
                            style: TextStyle(fontWeight : FontWeight.bold),
                          )
                        ],
                       )
                      ],
                    ),
                  ),
                ),
              ),

            )
            
          ]),
        ),
        
      );
    }
  }