import 'package:flutter/material.dart';
import 'package:testapp/Screen/Kamp.dart';
import 'package:testapp/Screen/Siripas Grand.dart';
import 'Screen/The Muse.dart';
import 'Screen/D Condo.dart';
import '../Screen/Fifth Condo.dart';
import 'Screen/Owl.dart';
import 'Screen/Infinity.dart';
import 'Screen/The Bright.dart';
import '../pages/sidemenu.dart';
import 'Screen/Siripas Place.dart';

class TravelApp extends StatefulWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  List<String> urls = [
    "https://bcdn.renthub.in.th/listing_picture/202105/20210504/oFLuQ4NwapQ6Vore6Xo4.jpg?",//Muse //0
    "https://bcdn.renthub.in.th/listing_picture/202012/20201201/UKXQtLuLmQ3sYc9zWQVB.jpg?class=moptimized",//1 //spp
    "https://assets.baanfinder.com/2v515uiptvt0n5pgjmb5fv5moozqc3tn4td1lxyajura0943wja25vwxamf6o19x9qsbiq8e90jwgk78wb26xrnugxkmo202s3pb2a9qflanspiplg8hvyes949aee0f.jpg",//2 //dcon
    "https://bcdn.renthub.in.th/listing_picture/202104/20210408/hqZsBFGGbhkuXv8RA6Pj.jpg?class=moptimized",//3 //infi
    "https://bcdn.renthub.in.th/listing_picture/201712/20171228/kuYBep6Vog57Pgbvfs81.jpg?class=doptimized",//4 //bright
    "https://scontent.fbkk10-1.fna.fbcdn.net/v/t1.6435-9/160952860_1843473929159207_8741355723898091654_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=3tcJLKe3GwoAX8PBuBO&_nc_ht=scontent.fbkk10-1.fna&oh=00_AfBO1LavbvtYfkfCden4vkL3Vl57hTFwVvI1uNMsf1sANg&oe=65431EE5",//5 //fifth
    "https://bcdn.renthub.in.th/listing_picture/202304/20230403/bRha4UexLt8yG7isJ82P.jpg?class=doptimized",//6 //owl
    "https://bcdn.renthub.in.th/listing_picture/202112/20211215/JzK78CuxiSvJ3x6XZTGN.jpg?class=doptimized",//7
    "https://bcdn.renthub.in.th/listing_picture/202112/20211215/53SCkAZqLHsrtJK4YUdU.jpg?class=doptimized",//8 //spg
    "https://scontent.fkdt1-1.fna.fbcdn.net/v/t39.30808-6/279098802_163744366047877_4710657823472108338_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeE3bGOUKpY4cm3Xq4Bw3tz92oRD48HPdj7ahEPjwc92PtikCD-5rItlqmE5n-65cKN8A68IMuKU5sV-bKVfpAxU&_nc_ohc=t8jgFsZTLXYAX85Q8oS&_nc_ht=scontent.fkdt1-1.fna&oh=00_AfCAp94aMdZSFNawku2qLgj5g_MpsMsRT-X6phfpXewT7w&oe=65314271"//9
    //10
  ];
  

  void updateList(String value) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      backgroundColor: const Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueGrey,
        title: const Text("KPS Dormitory"),
         centerTitle: true, // ทำให้หัวเรื่องอยู่ตรงกลาง
        titleSpacing: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "แนะนำหอพักกำแพงแสน",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              "เลือกหอพักที่คุณต้องการได้เลย",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 10.0),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    const TabBar(
                      indicatorColor: Color(0xFFFE8C68),
                      unselectedLabelColor: Color(0xFF555555),
                      labelColor: Color(0xFFFE8C68),
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(
                          text: "ที่ได้รับความนิยม",
                        ),
                        Tab(
                          text: "โปรโมชั่นที่น่าสนใจ",
                        ),
                        Tab(
                          text: "ที่คุณสนใจ",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 400,
                      // width: 300,
                      child: TabBarView(
                        children: [
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              travelCard(
                                context,
                                urls[0],
                                "The Muse",
                                "ห้องพักสุดหรูสไตล์โมเดิล",
                                5,
                              ),
                              travelCard(
                                context,
                                urls[5],
                                "Fifth Condo",
                                "เงียบสงบสำหรับสายชิล",
                                5,
                              ),
                              travelCard(
                                context,
                                urls[2],
                                "D-Condo",
                                "คอนโดหรูบรรยากาศดี",
                                5,
                              ),
                              travelCard(
                                context,
                                urls[1],
                                "Siripas Place",
                                "หอพักสไตล์มินิมอล",
                                5,
                              ),
                            ],
                          ),
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              travelCard(
                                context,
                                urls[6],
                                "นกฮูก",
                                "ห้องพักสไลต์ Loft สุดพรีเมี่ยม",
                                4,
                              ),
                              travelCard(
                                context,
                                urls[8],
                                "Siripas Grand",
                                "สะดวก สบาย ตอบโจทย์ ทุก Lifestyle",
                                4,
                              ),
                            ],
                          ),
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              travelCard(
                                context,
                                urls[3],
                                "Infinity",
                                "ห้องพักสวยบรรยากาศดี ห่างไกลความวุ่นวาย",
                                4,
                              ),
                              travelCard(
                                context,
                                urls[4],
                                "The Bright",
                                "หรู สะดวก ทันสมัย ออกแบบมาสำหรับนักศึกษา",
                                4,
                              ),
                              travelCard(
                                context,
                                urls[9],
                                "KAMP",
                                "ห้องพักสไตล์ใหม่ Lifestyle แบบชาวเมือง",
                                4)
                            ],
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget travelCard(
    BuildContext context, String imgUrl, String hotelName, String location, int rating) {
  return Card(
    margin: const EdgeInsets.only(right: 17.0,),
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    elevation: 0.0,
    child: InkWell(
      onTap: () {
        if (hotelName == "The Muse") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => themuse(),
            ),
          );
        } else if (hotelName == "Fifth Condo") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => fifthcondo(),
            ),
          );
        } else if (hotelName == "D-Condo") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => dcondo(),
            ),
          );
        } else if (hotelName == "Siripas Place") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => siripasplace(),
              ),
            );
        } else if (hotelName == "นกฮูก") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => owl(),
            ),
          );
        } else if (hotelName == "Siripas Grand") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => siripasgrand(),
            ),
          );
        } else if (hotelName == "Infinity") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => infinity(),
            ),
          );
        } else if (hotelName == "The Bright") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => thebright(),
            ),
          );
        } else if (hotelName == "KAMP") {
          Navigator.push(context,
          MaterialPageRoute(
            builder: (context) => Kamp(),)
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.cover,
            // scale: 100.0,
          ),
        ),
        width: 300.0,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  for (var i = 0; i < rating; i++)
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w800,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      location,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
