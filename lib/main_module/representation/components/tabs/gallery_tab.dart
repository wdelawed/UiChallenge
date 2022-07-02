import 'package:flutter/widgets.dart';
import 'package:unicode_task/main_module/representation/components/coach_images_gallery.dart';
import 'package:unicode_task/main_module/representation/components/coach_result_widget.dart';

import '../coach_image_widget.dart';

class CoachGalleryTab extends StatelessWidget {
  const CoachGalleryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 316,
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 13),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CoachImagesGallery(
              title: "صور المدرب",
              item: CoachImage(
                withIcon: true,
              )),
          CoachImagesGallery(
            title: "نتائج المتدربين",
            item: CoachResultImage(),
          ),
        ],
      ),
    );
  }
}
