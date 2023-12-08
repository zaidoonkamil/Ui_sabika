import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/widgets/arrow_back.dart';

class DetailsNews extends StatefulWidget {
  const DetailsNews({super.key});

  @override
  State<DetailsNews> createState() => _DetailsNewsState();
}

class _DetailsNewsState extends State<DetailsNews> {

  static List<String> stringWithoutBrackets = [
    'assets/images/photo_7_2023-06-29_17-33-58.jpg',
    'assets/images/photo_5_2023-06-29_17-33-58.jpg',
    'assets/images/photo_7_2023-06-29_17-33-58.jpg',
  ];
  static int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    CarouselSlider(
                      items: stringWithoutBrackets.map((e) {
                        return Builder(
                          builder: (BuildContext context) {
                            return SizedBox(
                              width: double.maxFinite,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                ),
                                child: Image.asset(
                                  e,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(
                          height: 350,
                          viewportFraction: 1.0,
                          enlargeCenterPage: false,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: true,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 6),
                          autoPlayAnimationDuration:
                          const Duration(seconds: 1),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, r) {
                            setState(() {
                              currentIndex = index;
                            });
                          }),
                    ),
                    Container(
                      height: 330,
                      width: double.maxFinite,
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: stringWithoutBrackets
                            .asMap()
                            .entries
                            .map((entry) {
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key ? 8 : 8,
                              height: 7.0,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 3.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == entry.key
                                      ? Theme.of(context).primaryColor
                                      : Theme.of(context).dividerColor),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text('2000/01/13'),
                          const SizedBox(width: 8,),
                          Icon(Ionicons.calendar,color: Theme.of(context).dividerColor,),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Text('اخبار و اسعار الذهب ',style: TextStyle(fontSize: 20),),
                      const SizedBox(height: 16,),
                      Text('ناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.ناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
                        style: Theme.of(context).textTheme.headline1,
                        textAlign: TextAlign.end,
                      ),

                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ArrowBack(
                onTap: () {
                  navigateBack(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
