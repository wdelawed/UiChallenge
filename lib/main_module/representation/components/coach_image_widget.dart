import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoachImage extends StatelessWidget {
  final bool withIcon;
  final int imageIndex;
  const CoachImage({Key? key, this.withIcon = false, this.imageIndex = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      height: 104,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imageIndex == 1
                ? "assets/images/coach_image.jpg"
                : "assets/images/coach_image_2.jpg")),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            4,
          ),
        ),
      ),
      child: withIcon
          ? IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/svgs/ic_youtube.svg"))
          : Container(),
    );
  }
}
