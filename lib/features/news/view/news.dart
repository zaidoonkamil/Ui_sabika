import 'package:flutter/material.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/widgets/custom_button.dart';
import 'package:sabika2/features/details_news/view/details_news.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/news.png',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 16),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 7,
                itemBuilder:(context,index){
              return Column(
                children: [
                  Container(
                    height: 140,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).backgroundColor,
                          offset: const Offset(0, 2),
                          blurRadius: 6,
                          spreadRadius: 0,
                        ),
                      ],
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                              child: Image.asset(
                                'assets/images/photo_7_2023-06-29_17-33-58.jpg',
                                width: 135,
                                height: 140,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.end,
                              children: [
                                const Text('سبيكة ذهب'),
                                Expanded(
                                  child: Text(
                                    'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز .',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.end,
                                  ),
                                ),
                                CustomBottom(
                                  height: 30,
                                  width: 70,
                                  borderRadius:
                                  BorderRadius.circular(20),
                                  colorBottom: Theme.of(context)
                                      .bottomNavigationBarTheme
                                      .backgroundColor!,
                                  text: 'المزيد',
                                  onTap: () {
                                    navigateTo(context, const DetailsNews());
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 16,),
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
