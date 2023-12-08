import 'package:flutter/material.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/widgets/custom_button.dart';
import 'package:sabika2/features/details_products/view/details_products.dart';
import 'package:sabika2/features/request_order/view/request_order.dart';

class Basket extends StatelessWidget {
  const Basket({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/basket.png',
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 9,
                itemBuilder:(context,index){
              return Column(
                children: [
                  GestureDetector(
                    onTap:(){
                      navigateTo(context, const DetailsProducts());

                    },
                    child: Container(
                      height: 110,
                      width: double.maxFinite,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.more_horiz_outlined),
                              const SizedBox(height: 10,),
                              Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text('-',style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text('1',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Theme.of(context).scaffoldBackgroundColor),),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text('+',style: TextStyle(

                                            color: Theme.of(context).scaffoldBackgroundColor),),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment:
                              CrossAxisAlignment.end,
                              children: [
                                const Text('سبيكة ذهب',maxLines: 1,overflow: TextOverflow.ellipsis),
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
                          const SizedBox(width: 14,),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/photo_7_2023-06-29_17-33-58.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(height: 1,color: Theme.of(context).dividerColor,),
                  const SizedBox(height: 20,),
                ],
              );
            }),
          ),
          Column(
            children: [
              const SizedBox(height: 8,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$131.97'),
                  Text('(٢) سعر المنتج'),
                ],
              ),
              const SizedBox(height: 14,),
              Divider(height: 1,color: Theme.of(context).primaryColor,),
              const SizedBox(height: 8,),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$131.97'),
                  Text('الاجمالي'),
                ],
              ),
              const SizedBox(height: 8,),

              CustomBottom(
                height: 40,
                width: 140,
                borderRadius: BorderRadius.circular(20),
                colorBottom: Theme.of(context).bottomNavigationBarTheme.backgroundColor!,
                text: 'شراء',
                onTap: () {

                  navigateTo(context, const RequestOrder());
                },
              ),
              const SizedBox(height: 70,),
            ],
          ),
        ],
      )
    );
  }
}
