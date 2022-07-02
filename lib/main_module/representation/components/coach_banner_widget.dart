import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicode_task/main_module/representation/ui_config.dart';

class CoachBanner extends StatelessWidget {
  const CoachBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 400),
      child: AspectRatio(
        aspectRatio: 335 / 193,
        child: Container(
          padding: const EdgeInsets.fromLTRB(19, 6, 14, 21),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            image: DecorationImage(
              image: AssetImage("assets/images/coach_cover.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        gradient: kStickergradient),
                    child: Text(
                      "ملصق جانبي",
                      style: k9semibold.copyWith(
                          color: Colors.white, height: 17 / 9),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Container(
                    width: 40,
                    height: 40,
                    //padding: EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Material(
                      color: Colors.white.withOpacity(.15),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        splashColor: kprimaryBtnBackground,
                        onTap: () {},
                        child: Container(
                          width: 32,
                          height: 32,
                          margin: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                              color: kprimaryBtnBackground,
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            CupertinoIcons.play_arrow_solid,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
