import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unicode_task/main_module/representation/components/expandable_text.dart';
import 'package:unicode_task/main_module/representation/ui_config.dart';

class CoachInfoWidget extends StatelessWidget {
  const CoachInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 47,
              height: 47,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/avatar.jpg")),
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "عبد الرحمن عبيد",
                      style: k14bold.copyWith(
                          height: 26 / 14, color: kPrimaryTextColor),
                    ),
                    Text(
                      "الرياض السعودية",
                      style: k12regular.copyWith(
                          height: 23 / 12, color: kSecondaryTextColor),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
              decoration: const BoxDecoration(
                  color: kprimaryBtnBackground,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Row(children: [
                Container(
                  margin: const EdgeInsets.only(left: 6),
                  child: Text(
                    "4.2",
                    style: k12semibold.copyWith(
                        color: Colors.white, height: 23 / 12),
                  ),
                ),
                const Icon(
                  Icons.star,
                  size: 12,
                  color: Colors.white,
                ),
              ]),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 0),
                      decoration: BoxDecoration(
                        color: const Color(0xffDD0539).withOpacity(.04),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        "رفع أثقال",
                        style: k12regular.copyWith(
                            color: const Color(0xffDD0539), height: 23 / 12),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 126,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 23,
                      height: 23,
                      child: Material(
                        color: const Color(0xffF5F6FA),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
                          splashColor: kprimaryBtnBackground,
                          onTap: () {},
                          child: Container(
                            height: 23,
                            width: 23,
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: SvgPicture.asset(
                              "assets/svgs/ic_social_snapchat.svg",
                              height: 12,
                              width: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 23,
                      height: 23,
                      child: Material(
                        color: const Color(0xffF5F6FA),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
                          splashColor: kprimaryBtnBackground,
                          onTap: () {},
                          child: Container(
                            height: 23,
                            width: 23,
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: SvgPicture.asset(
                              "assets/svgs/ic_social_instagram.svg",
                              height: 12,
                              width: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 23,
                      height: 23,
                      child: Material(
                        color: const Color(0xffF5F6FA),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
                          splashColor: kprimaryBtnBackground,
                          onTap: () {},
                          child: Container(
                            height: 23,
                            width: 23,
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: SvgPicture.asset(
                              "assets/svgs/ic_social_twitter.svg",
                              height: 12,
                              width: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 23,
                      height: 23,
                      child: Material(
                        color: const Color(0xffF5F6FA),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
                          splashColor: kprimaryBtnBackground,
                          onTap: () {},
                          child: Container(
                            height: 23,
                            width: 23,
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: SvgPicture.asset(
                              "assets/svgs/ic_social_facebook.svg",
                              height: 12,
                              width: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: const CoachExpandableText(),
        )
      ],
    );
  }
}
