import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  MediaQueryData? mqData;
  @override
  Widget build(BuildContext context) {
    mqData = MediaQuery.of(context);
    log("( width : ${mqData!.size.width}, height: ${mqData!.size.height})");
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
      ),
      body: mqData!.size.width > mqData!.size.height
          ? Center(
              child: Container(
                width: mqData!.size.width * .6,
                height: mqData!.size.height * 0.8,
                color: Colors.orange,
              ),
            )
          : Center(
              child: Container(
                width: mqData!.size.width * .6,
                height: mqData!.size.height * 0.8,
                color: Colors.black,
              ),
            ),
    );
  }
}
