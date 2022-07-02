import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unicode_task/main_module/representation/components/coach_banner_widget.dart';
import 'package:unicode_task/main_module/representation/components/coach_image_widget.dart';
import 'package:unicode_task/main_module/representation/components/coach_images_gallery.dart';
import 'package:unicode_task/main_module/representation/components/coach_info_widget.dart';
import 'package:unicode_task/main_module/representation/components/customers_reviews_widget.dart';
import 'package:unicode_task/main_module/representation/components/subscription_plans_widget.dart';
import 'package:unicode_task/main_module/representation/components/tabs/gallery_tab.dart';
import 'package:unicode_task/main_module/representation/components/tabs/questions_tab_widget.dart';
import 'package:unicode_task/main_module/representation/ui_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedTab = 0;
  final int _selectedPlan = 1;
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    _tabController?.addListener(() {
      _selectedTab = _tabController?.index ?? 0;

      setState(() {});
    });
    super.initState();
  }

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
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 574),
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 47),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      const CoachInfoWidget(),
                      Container(
                        margin: const EdgeInsets.only(top: 26),
                        child: const Center(
                          child: CoachBanner(),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: DefaultTabController(
                          length: 2,
                          child: Column(
                            children: [
                              TabBar(
                                  controller: _tabController,
                                  onTap: (tab) {
                                    setState(() {
                                      _selectedTab = tab;
                                    });
                                  },
                                  indicatorColor: kprimaryBtnBackground,
                                  labelColor: kprimaryBtnBackground,
                                  unselectedLabelColor: const Color(0xffA1A1A1),
                                  labelStyle: k12regular,
                                  tabs: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      alignment: Alignment.bottomCenter,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/svgs/ic_gallery.svg",
                                            width: 14,
                                            height: 14,
                                            color: _selectedTab == 0
                                                ? kprimaryBtnBackground
                                                : const Color(0xffA1A1A1),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 7),
                                            child: const Text(
                                              "المعرض",
                                              style: k14regular,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      alignment: Alignment.bottomCenter,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/svgs/ic_questions.svg",
                                            width: 14,
                                            height: 14,
                                            color: _selectedTab == 1
                                                ? kprimaryBtnBackground
                                                : const Color(0xffA1A1A1),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 7),
                                            child: const Text(
                                              "شروط المدرب",
                                              style: k14regular,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                              SizedBox(
                                height: 351,
                                child: TabBarView(
                                  controller: _tabController,
                                  children: const [
                                    CoachGalleryTab(),
                                    QuestionsTabWidget(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const CoachCustomerReviews(),
                SubscriptionPlan(selectedPlan: _selectedPlan),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 99,
        constraints: const BoxConstraints(minWidth: 570),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24.5),
        color: Colors.white,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: kSecondaryBtnBackground,
            // maximumSize: const Size(570, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: Text(
            "اشتراك",
            style: k14semibold.copyWith(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
