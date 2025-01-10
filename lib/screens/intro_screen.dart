import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:s2s_radionica/custom_widgets/custom_autosizetext.dart';
import 'package:s2s_radionica/custom_widgets/custom_button.dart';
import 'package:s2s_radionica/utils/global_colors.dart';
import 'package:s2s_radionica/utils/global_text_style.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.jpeg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            color: GlobalColors.black.withOpacity(0.3),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomAutoSizeText(
                    text: 'Get Ready for',
                    style: GlobalTextStyles.subtitleStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomAutoSizeText(
                    text: 'New Adventures',
                    style: GlobalTextStyles.titleStyle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const CustomAutoSizeText(
                    text:
                        'If you like to travel, then this is for you! Here you can explore the beauty of the world.',
                    maxLines: 3,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: GlobalButton(
                      onPressed: () => {context.go('/home')},
                      text: 'Lets Tour',
                      width: 200,
                      textColor: GlobalColors.darkGreen,
                      backgroundColor: GlobalColors.white,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
