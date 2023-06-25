import 'package:bbq_restaurant/detail_page.dart';
import 'package:bbq_restaurant/models/bbq.dart';
import 'package:bbq_restaurant/widget/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                width: double.infinity,
                color: Colors.brown,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://t4.ftcdn.net/jpg/01/17/51/33/360_F_117513348_MxbNFP6IonzouKccGpk3hPyeEW4tVDri.jpg")),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 2)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Selamat Datang Di Restaurant Barbeque Garut",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFFF5F5F7),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextField(
                        cursorHeight: 20,
                        autofocus: false,
                        decoration: InputDecoration(
                            hintText: "Cari Restaurant Barbeque Favoritmu",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Category(imagePath: "assets/bbq1.jpg", title: "bbq"),
                Category(imagePath: "assets/bbq2.png", title: "Eyece"),
                Category(imagePath: "assets/bbq3.png", title: "Grill"),
                Category(imagePath: "assets/bbq4.png", title: "Tomyam"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Tempat Nge Grill 🥩",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: menuList.map((menu) => bbq(menu: menu)).toList(),
          )
        ],
      )),
    );
  }
}

class bbq extends StatelessWidget {
  final Menu menu;
  const bbq({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 220,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NewsDetailScreen(menu: menu);
          }));
        },
        child: Stack(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 10,
              child: Column(children: [
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Image.asset(
                    menu.banner,
                    fit: BoxFit.cover,
                  ),
                )
              ]),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              child: SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(menu.nama,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            menu.rating.toString(),
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.access_time, color: Colors.brown),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            menu.buka,
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
