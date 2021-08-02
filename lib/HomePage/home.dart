import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/HomePage/component/AdsListview.dart';
import 'package:grocery/colors/Colors.dart';

import 'component/Catagory.dart';
import 'component/CategoryDetail.dart';
import 'component/PopularItemListview.dart';
import 'component/searchfield.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF121945),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 50),
                    child: Container(
                      child: Text(
                        "Hi 🤣",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w200),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, top: 50),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("images/handyMan.jpg"),
                    ),
                  ),
                ],
              ),
            ),
            //>>>>>>>>>>>>>>>>>>>>>>>>>>>>searchfield>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SearchBar(),
            ),
            //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Catogory// Category text>>>>>>>>>>>>>>>>>>>>>>>//
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10),
                  child: Container(
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w100),
                    ),
                  ),
                ),
                //>>>>>>>>>>>>>>>>>>>>> Show All text>>>>>>>>>>>>>>>>>>>>>>>>>>>//
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => CategoryDetail()));
                    },
                    child: Container(
                      child: Text(
                        "See all",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w100),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            /////////////////////////Listview Horizentally/////////////////
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.200,
                color: ColorConstants.darkblue,
                child: Category(),
              ),
            ),
            ////////////////////////Text For Popular Ads//////////////////////////////
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                child: Text(
                  "Popular ADS",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w100),
                ),
              ),
            ),
            //>>>>>>>>>>>>>>>>>>>>>> AdsListview>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.150,
                color: ColorConstants.darkblue,
                child: AdsListView(),
              ),
            ),

            //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> make A Popular Container in listview>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10),
                  child: Container(
                    child: Text(
                      "Popular Deals",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w100),
                    ),
                  ),
                ),
                //>>>>>>>>>>>>>>>>>>>>> Show All text>>>>>>>>>>>>>>>>>>>>>>>>>>>//
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Container(
                    child: Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w100),
                    ),
                  ),
                ),
              ],
            ),
            /////////////////////////////// Popular Deals ListView ///////////////////////////////
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.250,
                color: ColorConstants.darkblue,
                child: PopularDeal(),
              ),
            ),
          ],
        ));
  }
}
