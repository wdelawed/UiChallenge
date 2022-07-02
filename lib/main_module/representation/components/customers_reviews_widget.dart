import 'package:flutter/material.dart';
import 'package:unicode_task/main_module/representation/components/customer_review_card.dart';
import 'package:unicode_task/main_module/representation/ui_config.dart';

class CoachCustomerReviews extends StatelessWidget {
  const CoachCustomerReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      height: 175,
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
                    "آراء ",
                    style: k14bold.copyWith(
                        color: kPrimaryTextColor, height: 26 / 14),
                  ),
                ),
                Text(
                  "المشتركين",
                  style: k14bold.copyWith(
                      color: kPrimaryTextColor, height: 26 / 14),
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Material(
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 105,
                        child: Text(
                          "عرض جميع الآراء (24)",
                          style: k12semibold.copyWith(
                              color: const Color(
                                0xff6A6A6A,
                              ),
                              height: 26 / 12),
                        ),
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
          Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 27),
              child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, i) {
                    return const CustomerReviewCard();
                  }))
        ],
      ),
    );
  }
}
