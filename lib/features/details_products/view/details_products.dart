import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/widgets/arrow_back.dart';

class DetailsProducts extends StatefulWidget {
  const DetailsProducts({super.key});

  @override
  State<DetailsProducts> createState() => _DetailsProductsState();
}

class _DetailsProductsState extends State<DetailsProducts> {
  static List<String> stringWithoutBrackets = [
    'assets/images/photo_7_2023-06-29_17-33-58.jpg',
    'assets/images/photo_5_2023-06-29_17-33-58.jpg',
    'assets/images/photo_7_2023-06-29_17-33-58.jpg',
  ];
  static int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                        Text(
                          'سويسرس',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(14),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 1,
                                        color: Theme.of(context).dividerColor),
                                  ),
                                  child: const Text(
                                    '-',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text('1'),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(14),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 1,
                                        color: Theme.of(context).dividerColor),
                                  ),
                                  child: const Text(
                                    '+',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            const Text('سبيكة ذهب')
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 2),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  Text('قيراط',style: TextStyle(color: Theme.of(context).primaryColor),),
                                  Text('24',style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),),
                                ],
                              ),
                            ),
                            const SizedBox(width: 6,),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 2),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  Text('غم',style: TextStyle(color: Theme.of(context).primaryColor),),
                                  Text('100',style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 26,),
                        Text('الوصف',style: Theme.of(context).textTheme.headline1,),
                        const SizedBox(height: 8,),
                        Stack(
                          children: [
                            const Divider(height: 2,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.2,
                                  height: 2,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16,),
                        Text('ناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
                          style: Theme.of(context).textTheme.headline1,
                          textAlign: TextAlign.end,
                        ),
                        const SizedBox(height: 16,),
                        const Divider(height: 2,),
                        const SizedBox(height: 16,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('اجمالي السعر',style: Theme.of(context).textTheme.headline1,),
                                Row(
                                  children: [
                                    const Text('131.1'),
                                    const SizedBox(width: 8,),
                                    Text('بالدولار',style: Theme.of(context).textTheme.headline1,),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text('131.1'),
                                    const SizedBox(width: 8,),
                                    Text('بالدينار',style: Theme.of(context).textTheme.headline1,),
                                  ],
                                ),

                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('سعر القطعة',style: Theme.of(context).textTheme.headline1,),
                                Row(
                                  children: [
                                    const Text('131.1'),
                                    const SizedBox(width: 8,),
                                    Text('بالدولار',style: Theme.of(context).textTheme.headline1,),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text('131.1'),
                                    const SizedBox(width: 8,),
                                    Text('بالدينار',style: Theme.of(context).textTheme.headline1,),
                                  ],
                                ),

                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 26,),
                        Center(
                          child: Container(
                            width: 240,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                                borderRadius: BorderRadius.circular(26)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('اضافة الى سلة',style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),),
                                const SizedBox(width: 8,),
                                Icon(Icons.shopping_cart_sharp,color: Theme.of(context).scaffoldBackgroundColor,),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 26,),
                      ],
                    ),
                  ),

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
      ),
    );
  }
}
