import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
                child: OrientationBuilder(builder: (_, orientation) {
                  log("(orientation width : ${orientation}, orientation height: ${orientation})");

                  return Orientation.portrait == orientation
                      ? Center(
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.red,
                          ),
                        )
                      : Center(
                          child: Container(
                            width: 100,
                            height: 100,
                            color: const Color.fromARGB(255, 31, 14, 13),
                          ),
                        );
                }),
              ),
            )
          : Center(
              child: Container(
                width: mqData!.size.width * .6,
                height: mqData!.size.height * 0.8,
                color: Colors.grey,
                child: LayoutBuilder(builder: (_, Constraints) {
                  log("(Constraints width : ${Constraints.maxWidth})");
                  return Center(
                    child: Container(
                        width: Constraints.maxWidth * 0.4,
                        height: Constraints.maxHeight * 0.1,
                        color: Colors.red,
                        child: FittedBox(

                          fit: BoxFit.fill,
                          child: Text(
                            "ABCD Ok",
                            style: TextStyle(fontSize: 30),
                          ),
                        )),
                  );
                }),
              ),
            ),
    );
  }
}
