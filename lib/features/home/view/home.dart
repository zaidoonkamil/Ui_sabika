import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/widgets/custom_button.dart';
import 'package:sabika2/features/details_news/view/details_news.dart';
import 'package:sabika2/features/details_products/view/details_products.dart';
import 'package:sabika2/features/home/controler/cubit.dart';
import 'package:sabika2/features/home/controler/states.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/etihartext.png',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Container(
                              height: 140,
                              width: 327,
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
                            const SizedBox(
                              width: 14,
                            )
                          ],
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'مشاهدة ',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const Text('احدث الاخبار'),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            cubit.changeViewCard();
                          },
                          child: cubit.viewCard == true
                              ? Image.asset('assets/images/Category.png')
                              : Image.asset('assets/images/threeicons.png')),
                      Row(
                        children: [
                          Text(
                            'تصفية',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Image.asset('assets/images/filter.png'),
                        ],
                      ),
                    ],
                  ),
                ),
                cubit.viewCard == true
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 8),
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap:(){
                                      navigateTo(context, const DetailsProducts());
                                    },
                                    child: Container(
                                      height: 120,
                                      width: double.maxFinite,
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
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(10.0),
                                                  bottomLeft:
                                                      Radius.circular(10.0),
                                                ),
                                                child: Image.asset(
                                                  'assets/images/photo_7_2023-06-29_17-33-58.jpg',
                                                  width: 135,
                                                  height: 120,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  const Text('سبيكة ذهب'),
                                                  Text(
                                                    '24 قيراط',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline1,
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.end,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        '\$',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText1,
                                                      ),
                                                      const Text(' 212.99'),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                ],
                              );
                            }))
                    : StaggeredGridView.countBuilder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0.0),
                        controller: scrollController,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 12,
                        itemCount: 20,
                        itemBuilder: (BuildContext context, index) {
                          return Container(
                            margin: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Theme.of(context).backgroundColor,
                                  offset: const Offset(0, 2),
                                  blurRadius: 6,
                                  spreadRadius: 0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                  ),
                                  child: Image.asset(
                                    'assets/images/photo_7_2023-06-29_17-33-58.jpg',
                                    width: double.maxFinite,
                                    height: 160,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                          child: Text('سبيكة سويسري',
                                              textAlign: TextAlign.end,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis)),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        '24 قيراط',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1,
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        '\$',
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ),
                                      const Text(
                                        '300',
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                          );
                        },
                        staggeredTileBuilder: (index) {
                          return const StaggeredTile.count(1, 1.7);
                        }),
              ],
            ),
          );
        },
      ),
    );
  }
}
