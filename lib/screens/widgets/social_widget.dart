import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/colors.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: BoxBorder.all(
              color: AppColors.studio.withValues(alpha: 0.5),
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.linkedin,
                color: AppColors.studio,
                size: 15,
              ),
            ),
          ),
        ),
        SizedBox(width: 10,),
       Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: BoxBorder.all(
              color: AppColors.studio.withValues(alpha: 0.5),
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.github,
                color: AppColors.studio,
                size: 15,
              ),
            ),
          ),
        ),
           SizedBox(width: 10,),
 Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: BoxBorder.all(
              color: AppColors.studio.withValues(alpha: 0.5),
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.upwork,
                color: AppColors.studio,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
