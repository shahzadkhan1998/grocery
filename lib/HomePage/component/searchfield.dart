import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.800,
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.white60,
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0.7, 0.7),
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(Icons.search),
            ),
            Text(
              "search your daily grocery food",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
