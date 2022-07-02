import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:unicode_task/main_module/representation/ui_config.dart';

class CustomerReviewCard extends StatelessWidget {
  const CustomerReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(11),
        height: 120,
        width: 304,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/customer_avatar.jpg")),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
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
                          "محمد سامي",
                          style: k12bold.copyWith(
                              height: 26 / 14, color: kPrimaryTextColor),
                        ),
                        Row(
                          children: [
                            RatingBarIndicator(
                              rating: 4,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: kprimaryBtnBackground,
                              ),
                              itemCount: 5,
                              itemSize: 14.0,
                              direction: Axis.horizontal,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                "4.8",
                                style: k12regular.copyWith(
                                    height: 18 / 12,
                                    color: kSecondaryTextColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "أمس",
                  style: k10semibold.copyWith(color: kSecondaryTextColor),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 2),
              child: Text(
                "هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النوادر هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النوادر for cookware at overstock sites on the Net. First and foremost is price. In the vast majority of instances, you will be able to find up to date cookware for sale at these overstock websites for prices far less than what you will be able to find otherwise at different retail venues in either the brick and mortar world or on the World Wide Web. One of the other, important benefits to be realize by shopping for cookware for your home at overstock sites is found in the fact that they are very convenient. A consumer such as you literally can shop for cookware twenty four hours a day and seven days a week. If you are like most people in this day and age, not only are you living on a tight budget, but you are living on a tight schedule as well. You simply do not have the time available to you to shop around, to spend a great deal of time going from store to store, looking for cookware for your home. Thus, an Internet based overstock site can be a true godsend when it comes to saving time in your search for the best cookware for your own kitchen.As a final reminder, make certain that you only patronize those overstock sites that have established reputations for reliability. By shopping at an established site, you will make certain that you do obtain exactly the cookware products that you have bargained for while visiting one of the overstock venues on the Net.",
                style:
                    k12regular.copyWith(color: kSecondaryTextColor, height: 2),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
