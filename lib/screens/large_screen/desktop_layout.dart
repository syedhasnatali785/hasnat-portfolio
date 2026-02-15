import 'package:flutter/material.dart';
import 'package:myapp/constants/styles.dart';
import 'package:myapp/screens/widgets/header_text_widget.dart';
import 'package:myapp/screens/widgets/rotating_image_widget.dart';
import 'screens/widgets/header_text_widget.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Column(
            //mainBox
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                //two boxes in one row
                children: [
                  //left box
                  Column(
                    children: [
                      Row(
                        children: [
                          HeaderTextWidget(size: size),
                        ],
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox(
                   height: size.width*0.75 ,child:Column(mainAxisAlignment: MainAxisAlignment.center,children: [
RotatingImageContainer(),
                   ],) ,
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
