import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:s2s_radionica/custom_widgets/custom_button.dart';
import 'package:s2s_radionica/utils/global_colors.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  const CustomCard({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    precacheImage(NetworkImage(imageUrl), context);
    return Card(
      color: GlobalColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                width: 130,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AutoSizeText(
                      minFontSize: 8,
                      maxLines: 1,
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: GlobalColors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: GlobalColors.darkGrey,
                          size: 16,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        AutoSizeText(
                          minFontSize: 7,
                          maxLines: 1,
                          'Indonesia',
                          style: TextStyle(
                            color: GlobalColors.darkGrey,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    GlobalButton(
                        text: 'Details', fontSize: 12, onPressed: () => {}, width: 70),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
