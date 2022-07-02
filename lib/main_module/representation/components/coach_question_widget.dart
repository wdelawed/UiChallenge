import 'package:flutter/material.dart';
import 'package:unicode_task/main_module/representation/ui_config.dart';

class CoachQuestionWidget extends StatefulWidget {
  const CoachQuestionWidget({Key? key}) : super(key: key);

  @override
  State<CoachQuestionWidget> createState() => _CoachQuestionWidgetState();
}

class _CoachQuestionWidgetState extends State<CoachQuestionWidget> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      margin: const EdgeInsets.only(bottom: 17),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: const Color(0xffA1A1A1).withOpacity(0.12),
              offset: const Offset(0, 3),
              //spreadRadius: 100,
              blurRadius: 20),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          backgroundColor: Colors.white,
          onExpansionChanged: (expand) {
            setState(() {
              expanded = expand;
            });
          },
          tilePadding: EdgeInsets.zero,
          trailing: expanded
              ? Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Color(0xffF5F6FA),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Icon(
                    Icons.keyboard_arrow_up,
                    size: 11,
                    color: kprimaryBtnBackground,
                  ),
                )
              : Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Color(0xffF5F6FA),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    size: 11,
                    color: kprimaryBtnBackground,
                  ),
                ),
          title: Text(
            "أي نوع من الأسئلة يتم وضعه هنا",
            style: k12semibold.copyWith(color: Color(0xff25272A)),
          ),
          initiallyExpanded: expanded,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                "أي نوع من الأسئلة يتم وضعه هنا أي نوع من الأسئلة يتم وضعه هنا",
                style: k11regular.copyWith(
                    color: const Color(0xff25272A).withOpacity(.7),
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
