import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/screens/widgets/social_widget.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: BoxBorder.all(color: AppColors.studio),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Download CV', style: TextStyle(color: AppColors.studio)),
                const SizedBox.square(dimension: 12),
                FaIcon(FontAwesomeIcons.download, color: AppColors.studio),
                const SizedBox(width: 20),
                Expanded(child: SocialWidget()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
