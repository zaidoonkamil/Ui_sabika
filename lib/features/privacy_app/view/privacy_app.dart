import 'package:flutter/material.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/widgets/arrow_back.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ArrowBack(onTap: (){
                    navigateBack(context);
                  }, icon: const Icon(Icons.arrow_back_ios_new,size: 18,)),
                  Image.asset('assets/images/Privacy.png'),
                  SizedBox(width: 20,height: 20,)
                ],
              ),
              const SizedBox(height: 20,),
              const Text('سياسة التطبيق'),
              const SizedBox(height: 8,),
              Text('2000/01/13 اخر تحديث قي',style: Theme.of(context).textTheme.headline1,),
              const SizedBox(height: 12,),
              Stack(
                children: [
                  const Divider(height: 4,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.3,
                        height: 4,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 22,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('١. نقطة الاولى',textAlign: TextAlign.end,),
                        const SizedBox(height: 12,),
                        Text('ناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
                          style: Theme.of(context).textTheme.headline1,
                          textAlign: TextAlign.end,
                        ),
                        const SizedBox(height: 32,),

                        const Text('١. نقطة الاولى',textAlign: TextAlign.end,),
                        const SizedBox(height: 12,),
                        Text('ناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
                          style: Theme.of(context).textTheme.headline1,
                          textAlign: TextAlign.end,
                        ), Text('ناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
                          style: Theme.of(context).textTheme.headline1,
                          textAlign: TextAlign.end,
                        ), Text('ناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
                          style: Theme.of(context).textTheme.headline1,
                          textAlign: TextAlign.end,
                        ), Text('ناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
                          style: Theme.of(context).textTheme.headline1,
                          textAlign: TextAlign.end,
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(width: 14,),
                  Stack(
                    children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 8,
                          height: 500,
                          decoration: BoxDecoration(
                            color: Theme.of(context).dividerColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 8,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
