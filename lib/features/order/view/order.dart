import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/order.png'),
              ],
            ),
            const SizedBox(height: 20,),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
                itemBuilder:(context,index){
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
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
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/GPS Button.png'),
                            const SizedBox(width: 6,),
                            Text('استكشاف ',style: Theme.of(context).textTheme.headline1,),
                            const Spacer(),
                            const Text('الاستلام فرع بغداد'),
                            const SizedBox(width: 6,),
                            Image.asset('assets/images/Vector (1).png'),

                          ],
                        ),
                        const SizedBox(height: 16,),
                        Row(
                          children: [
                            Container(
                              width: 110,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: const Color(0xFFD2F4D8)
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('مقبول',style: TextStyle(color:Color(0xFF66DB79) ),)
                                ],
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text('\$',style: Theme.of(context).textTheme.bodyText1,),
                                const Text('131.97 '),
                              ],
                            ),
                            Text(': الاجمالي ',style: Theme.of(context).textTheme.headline1,),

                          ],
                        ),
                        const SizedBox(height: 16,),
                        Row(
                          children: [
                            Text('2023/08/12 ',style: Theme.of(context).textTheme.headline1,),
                            const Spacer(),
                            const Text('1'),
                            Text(' : العدد ',style: Theme.of(context).textTheme.headline1,),

                          ],
                        ),
                        const SizedBox(height: 16,),
                        const Divider(height: 2,),
                        const SizedBox(height: 16,),
                        Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          const Text('1'),
                                          Text(' : العدد ',style: Theme.of(context).textTheme.headline1,),

                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text('\$',style: Theme.of(context).textTheme.bodyText1,),
                                          const Text('131.97 '),
                                        ],
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Text('سبيكة ذهب',),
                                      Text(' 24 قيراط ',style: Theme.of(context).textTheme.headline1,),
                                      Row(
                                        children: [
                                          Text('\$',style: Theme.of(context).textTheme.bodyText1,),
                                          const Text('131.97 '),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 4,),
                                  ClipRRect(
                                    child: Image.asset(
                                      'assets/images/photo_7_2023-06-29_17-33-58.jpg',
                                      width: 95,
                                      height: 90,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(width: 4,),
                                  const Text('1#'),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
