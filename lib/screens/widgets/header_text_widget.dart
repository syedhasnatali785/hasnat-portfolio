import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/screens/widgets/social_section.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  final Size size;
  const HeaderTextWidget({super.key, required this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.18,
        horizontal: size.width * 0.7,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'I am Hasnat',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: size.width * 0.25),
          GradientText(
            "Flutter Developer",
            colors: [AppColors.ebony, AppColors.studio],
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: size.width * 0.040,
            ),
          ),
          SizedBox(
            height: size.width * 0.5,
            child: Text(
              'I break problems into pieces and solve using diverse thinking and ways',
            ),
          ),
          SizedBox(width: size.width*0.5,child: SocialSection()),
        ],
      ),
    );
  }
}
