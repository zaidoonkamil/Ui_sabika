import 'package:flutter/material.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/widgets/arrow_back.dart';
import 'package:sabika2/core/widgets/custom_button.dart';
import 'package:sabika2/core/widgets/custom_form_field.dart';
import 'package:sabika2/features/privacy_app/view/privacy_app.dart';

class RequestOrder extends StatelessWidget {
  const RequestOrder({super.key});

  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  static TextEditingController userNameController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ArrowBack(
                        onTap: (){
                          navigateBack(context);
                      },
                          icon:const Icon(Icons.arrow_back_ios_new),
                      ),
                      Image.asset('assets/images/complet_sail.png'),
                      ArrowBack(
                        onTap: (){
                          navigateTo(context, const Privacy());
                        },
                        padding: 0,
                        icon: Image.asset('assets/images/Exclamationmark.png'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 16),
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
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('اسم  '),
                        const SizedBox(height: 4,),
                        CustomFormField(
                          controller: userNameController,
                          textInputType: TextInputType.text,
                          colorBorder: Theme.of(context).dividerColor,
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'رجائا ادخل الاسم';
                            }
                          },
                          hintText: 'اضافة اسم',
                        ),
                        const SizedBox(height: 12,),
                        const Text('رقم الهاتف  '),
                        const SizedBox(height: 4,),
                        CustomFormField(
                          controller: userNameController,
                          textInputType: TextInputType.phone,
                          colorBorder: Theme.of(context).dividerColor,
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'رجائا ادخل رقم الهاتف';
                            }
                          },
                          hintText: 'اضافة الرقم',
                        ),
                        const SizedBox(height: 12,),
                        const Text('الملاحضات  '),
                        const SizedBox(height: 4,),
                        CustomFormField(
                          colorBorder: Theme.of(context).dividerColor,
                          height: 140,
                          controller: userNameController,
                          textInputType: TextInputType.text,
                          hintText: 'اضافة وصف',
                          maxLines: 4,
                        ),
                        const SizedBox(height: 12,),
                        Row(
                          children: [
                            GestureDetector(
                                onTap:(){
                                  navigateTo(context, const Privacy());
                                },
                                child: Image.asset('assets/images/Exclamationmark.png',scale: 1.2,)),
                            const Spacer(),
                            const Text('اوافق على جميع الشروط  ',style: TextStyle(fontSize: 12),),
                            Container(
                              width: 20,
                              height:20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Theme.of(context).primaryColor
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Theme.of(context).cardColor
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 22,),
                        Center(
                          child: CustomBottom(
                            height: 40,
                            width: 160,
                            borderRadius: BorderRadius.circular(20),
                            colorBottom: Theme.of(context).bottomNavigationBarTheme.backgroundColor!,
                            text: 'ارسال الطلب',
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 22,),
                  Text('عند ارسال طلب منتج معين سوف يتم مراجعة الطلب خلال مدة لا تتجاوز عن 48 ساعة',
                    style: Theme.of(context).textTheme.headline1,
                    textAlign: TextAlign.center,
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
