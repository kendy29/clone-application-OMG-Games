import 'package:cloneomgapp/Screen/MeaningPage.dart';
import 'package:flutter/material.dart';

class PageQuetion extends StatefulWidget {
  @override
  _PageQuetionState createState() => _PageQuetionState();
}

class _PageQuetionState extends State<PageQuetion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFB4E4E),
        title: Text("Kandy_Software", style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => MeaningPage(name: 'senyum')));
            },
            child: Card(
              margin: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text("Apa Arti Senyum Kamu"),
                  Icon(
                    Icons.sentiment_satisfied_alt,
                    size: 100,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => MeaningPage(
                        name: 'hati',
                      )));
            },
            child: Card(
              margin: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text("Hati Seperti Apa Yang Kamu Punya"),
                  Icon(
                    Icons.sentiment_satisfied_alt,
                    size: 100,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
