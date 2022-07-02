import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unicode_task/main_module/representation/components/coach_info_widget.dart';
import 'package:unicode_task/main_module/representation/ui_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Container(
            margin: const EdgeInsets.only(right: 4),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/svgs/ic_back.svg",
                matchTextDirection: true,
              ),
              onPressed: () {
                //  Navigator.pop(context);
              },
            ),
          ),
          elevation: 0,
          titleSpacing: 0,
          title: Container(
            padding: const EdgeInsets.only(left: 50),
            child: Center(
                child: Text(
              "عبد الرحمن عبيد",
              style: k16semibold.copyWith(color: kPrimaryTextColor),
            )),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 47),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                const CoachInfoWidget(),
                Container(
                  margin: const EdgeInsets.only(top: 26),
                )
              ],
            ),
          ),
        ));
  }
}
