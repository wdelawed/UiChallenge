import 'package:flutter/material.dart';
import 'package:unicode_task/main_module/representation/ui_config.dart';

class CoachResultImage extends StatelessWidget {
  const CoachResultImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 104,
        height: 104,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              4,
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 56,
              height: 104,
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/coach_result_before.jpg",
                  ),
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
              ),
              child: Text(
                "قبل",
                style:
                    k10regular.copyWith(color: Colors.white, height: 19 / 10),
              ),
            ),
            Container(
              width: 48,
              height: 104,
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/coach_result_after.jpg",
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  bottomLeft: Radius.circular(4),
                ),
              ),
              child: Text(
                "بعد",
                style:
                    k10regular.copyWith(color: Colors.white, height: 19 / 10),
              ),
            )
          ],
        ));
  }
}
