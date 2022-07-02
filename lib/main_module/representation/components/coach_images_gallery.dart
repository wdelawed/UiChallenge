import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicode_task/main_module/representation/ui_config.dart';

class CoachImagesGallery extends StatefulWidget {
  final String title;
  final Widget item;
  const CoachImagesGallery({Key? key, required this.title, required this.item})
      : super(key: key);

  @override
  State<CoachImagesGallery> createState() => _CoachImagesGalleryState();
}

class _CoachImagesGalleryState extends State<CoachImagesGallery> {
  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 151,
      width: 375,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            child: Text(
              widget.title,
              style: k14semibold.copyWith(
                color: kPrimaryTextColor,
                height: 19 / 14,
              ),
            ),
          ),
          Container(
            //color: Colors.red,
            height: 104,
            child: PageView(
              children: [
                GalleryPage(
                  item: widget.item,
                ),
                GalleryPage(
                  item: widget.item,
                ),
                GalleryPage(
                  item: widget.item,
                ),
                GalleryPage(
                  item: widget.item,
                )
              ],
              onPageChanged: (i) {
                setState(() {
                  _selectedPage = i;
                });
              },
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 6),
                    child: DotsIndicator(
                      dotsCount: 4,
                      position: _selectedPage + 0.0,
                      decorator: DotsDecorator(
                        size: const Size.square(5.0),
                        activeSize: const Size(15.0, 5.0),
                        color: const Color(0xffEBEDF0),
                        activeColor: kprimaryBtnBackground,
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key, required this.item}) : super(key: key);
  final Widget item;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        item,
        item,
        item,
      ],
    );
  }
}
