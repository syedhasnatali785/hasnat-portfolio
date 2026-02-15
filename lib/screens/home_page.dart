import 'package:flutter/material.dart';
import 'package:myapp/screens/large_screen/desktop_layout.dart';
import 'package:myapp/screens/mobile/mobile_layout.dart';
import 'package:myapp/screens/tablet/tablet_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth > 950) {
          return DesktopLayout();
        } else if (Constraints.maxWidth > 600) {
          return TabletLayout();
        } else {
          return MobileLayout();
        }
      },
    );
  }
}
