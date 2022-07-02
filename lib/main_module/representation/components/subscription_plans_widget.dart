import 'package:flutter/material.dart';
import 'package:unicode_task/main_module/representation/ui_config.dart';

class SubscriptionPlan extends StatefulWidget {
  final int selectedPlan;
  const SubscriptionPlan({Key? key, required this.selectedPlan})
      : super(key: key);

  @override
  State<SubscriptionPlan> createState() => _SubscriptionPlanState();
}

class _SubscriptionPlanState extends State<SubscriptionPlan> {
  int _selectedPlan = 0;
  @override
  void initState() {
    _selectedPlan = widget.selectedPlan;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      //height: 288,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 2),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: kprimaryBtnBackground,
                        width: 2,
                      ),
                    ),
                  ),
                  child: Text(
                    "خطط",
                    style: k14bold.copyWith(
                        color: kPrimaryTextColor, height: 26 / 14),
                  ),
                ),
                Text(
                  "الاشتراك",
                  style: k14bold.copyWith(
                      color: kPrimaryTextColor, height: 26 / 14),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 30, bottom: 42),
              width: 205,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectedPlan = 0;
                      });
                    },
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Container(
                        width: 94,
                        height: 87,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 14.5),
                        decoration: BoxDecoration(
                          gradient:
                              _selectedPlan == 0 ? kSelectPlangradient : null,
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "3 شهور",
                              style: k11regular.copyWith(
                                  color: _selectedPlan == 0
                                      ? Colors.white
                                      : kPrimaryTextColor,
                                  height: 19 / 11),
                            ),
                            Text(
                              r'$8.49',
                              style: k12bold.copyWith(
                                  color: _selectedPlan == 0
                                      ? Colors.white
                                      : kPrimaryTextColor,
                                  height: 20 / 12),
                            ),
                            Text(
                              r'شهريا / $4.49',
                              style: k11regular.copyWith(
                                  color: _selectedPlan == 0
                                      ? Colors.white
                                      : kPrimaryTextColor,
                                  height: 19 / 11),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectedPlan = 1;
                      });
                    },
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Container(
                        width: 94,
                        height: 87,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 14.5),
                        decoration: BoxDecoration(
                          gradient:
                              _selectedPlan == 1 ? kSelectPlangradient : null,
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "3 شهور",
                              style: k11regular.copyWith(
                                  color: _selectedPlan == 1
                                      ? Colors.white
                                      : kPrimaryTextColor,
                                  height: 19 / 11),
                            ),
                            Text(
                              r'$16.49',
                              style: k12bold.copyWith(
                                  color: _selectedPlan == 1
                                      ? Colors.white
                                      : kPrimaryTextColor,
                                  height: 20 / 12),
                            ),
                            Text(
                              r'شهريا / $5.50',
                              style: k11regular.copyWith(
                                  color: _selectedPlan == 1
                                      ? Colors.white
                                      : kPrimaryTextColor,
                                  height: 19 / 11),
                            ),
                          ],
                        ),
                      ),
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
