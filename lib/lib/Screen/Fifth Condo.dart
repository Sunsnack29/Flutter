import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class fifthcondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    Size _size = MediaQuery.of(context).size; 
      return Scaffold (
        // ignore: sized_box_for_whitespace
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            Image.asset("assets/fifh.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: _size.height / 1.25,),

            Container(height: double.infinity,
            decoration: const BoxDecoration(
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
              padding: const EdgeInsets.only(left: 15 , top: 45),
              child: IconButton(
                icon: const Icon(CupertinoIcons.back),
                onPressed: () {
                  Navigator.pop(context);
                },),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
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
                    padding: const EdgeInsets.all(35),
                    width: double.infinity,
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fifth Condo",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "กำแพงแสน, นครปฐม",
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
                        SizedBox(height: 25),
                        Row(
                        children: [
                          Icon(CupertinoIcons.map,
                          color: Colors.black26,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "",
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