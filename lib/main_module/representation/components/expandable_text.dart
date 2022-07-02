import 'package:flutter/material.dart';
import 'package:unicode_task/main_module/representation/ui_config.dart';

class CoachExpandableText extends StatefulWidget {
  const CoachExpandableText({Key? key}) : super(key: key);

  @override
  State<CoachExpandableText> createState() => _CoachExpandableTextState();
}

class _CoachExpandableTextState extends State<CoachExpandableText> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 17),
          child: AnimatedContainer(
            height: expanded ? null : 63,
            curve: Curves.bounceIn,
            duration: const Duration(milliseconds: 300),
            child: Text(
              " هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النوادر هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النواد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النواد من هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النوادر هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النواد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النواد من هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النوادر هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النواد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النواد من هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النوادر هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النواد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النواد من الأنواع المتوفرة لنصوص لوريم إيبسوم خال بعض النواد من الأنواع المتوفرة لنصوص لوريم إيبسوم خال بعض النواد من الأنواع المتوفرة لنصوص لوريم إيبسوم خال بعض النواد من الأنواع المتوفرة لنصوص لوريم إيبسوم خال بعض النواد من الأنواع المتوفرة لنصوص لوريم إيبسوم خال بعض النواد من الأنواع المتوفرة لنصوص لوريم إيبسوم خال بعض النواد من الأنواع المتوفرة لنصوص لوريم إيبسوم خال بعض النواد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النوادر ",
              style: k12regular.copyWith(
                  color: kPrimaryTextColor, height: 20 / 12),
              textAlign: TextAlign.justify,
              maxLines: expanded ? null : 3,
            ),
          ),
        ),
        AnimatedContainer(
          curve: Curves.bounceIn,
          duration: const Duration(milliseconds: 700),
          height: expanded ? 0 : null,
          child: Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.white.withOpacity(0.45),
                  Colors.white.withOpacity(.4)
                ],
              ),
            ),
            child: Center(
                child: Material(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {
                  setState(() {
                    expanded = true;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 3),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffF5F6FA)),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Text(
                    "عرض الكل",
                    style: k12regular.copyWith(
                        color: kPrimaryTextColor, height: 23 / 12),
                  ),
                ),
              ),
            )),
          ),
        )
      ],
    );
  }
}
