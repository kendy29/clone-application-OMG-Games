import 'dart:math';

import 'package:flutter/material.dart';

class MeaningPage extends StatefulWidget {
  final String name;
  MeaningPage({this.name});
  @override
  _MeaningPageState createState() => _MeaningPageState(name: name);
}

class _MeaningPageState extends State<MeaningPage> {
  final String name;
  _MeaningPageState({this.name});
  String data;
  Future getData() async {
    Random random = new Random();
    int randomNumber = random.nextInt(4) + 1;
    return randomNumber;
  }

  callme() async {
    await Future.delayed(Duration(seconds: 5));
    getData().then((value) {
      setState(() {
        data = value.toString();
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callme();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFB4E4E),
        title: Text("Kandy_Software", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            data == null
                ? Center(child: CircularProgressIndicator())
                : Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/gambar/picture.jpg'),
                            fit: BoxFit.fill)),
                  ),
            data == null
                ? Center(child: CircularProgressIndicator())
                : Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/gambar/' + name + '_IMG_$data.png'),
                            fit: BoxFit.fill)),
                  ),
          ],
        ),
      ),
    );
  }
}
