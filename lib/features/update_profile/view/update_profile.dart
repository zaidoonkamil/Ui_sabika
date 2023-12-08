import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/widgets/arrow_back.dart';
import 'package:sabika2/core/widgets/custom_button.dart';
import 'package:sabika2/core/widgets/custom_form_field.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  static TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            Container(
              width: double.maxFinite,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Theme.of(context).primaryColor,
              ),
            ),
            Padding(
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
                            icon: const Icon(Icons.arrow_back_ios_new)),
                        const Text('الملف الشخصي'),
                        Container(width: 40,height: 20,color: Theme.of(context).primaryColor,),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: 135,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'assets/images/photo_7_2023-06-29_17-33-58.jpg',
                            width: 115,
                            height: 120,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('اسم   '),
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
                        const SizedBox(height: 8,),
                        const Text('المحافضة   '),
                        const SizedBox(height: 4,),
                        CustomFormField(
                          controller: userNameController,
                          textInputType: TextInputType.text,
                          colorBorder: Theme.of(context).dividerColor,
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'رجائا ادخل بغداد';
                            }
                          },
                          hintText: 'بغداد',
                        ),
                        const SizedBox(height: 8,),
                        const Text('المواليد   '),
                        const SizedBox(height: 4,),
                        CustomFormField(
                          controller: userNameController,
                          textInputType: TextInputType.text,
                          colorBorder: Theme.of(context).dividerColor,
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'رجائا ادخل المواليد';
                            }
                          },
                          hintText: '2000/01/13',
                          icon: Icon(Ionicons.calendar,color: Theme.of(context).dividerColor,),

                        ),
                        const SizedBox(height: 8,),
                        const Text('كلمة السر   '),
                        const SizedBox(height: 4,),
                        CustomFormField(
                          controller: userNameController,
                          textInputType: TextInputType.text,
                          colorBorder: Theme.of(context).dividerColor,
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'رجائا ادخل كلمة السر';
                            }
                          },
                          hintText: '************',
                        ),
                        const SizedBox(height: 52,),
                        Center(
                          child: CustomBottom(
                            // height: 60,
                            width: 160,
                            borderRadius: BorderRadius.circular(20),
                            colorBottom: Theme.of(context).bottomNavigationBarTheme.backgroundColor!,
                            text: 'تحديث',
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                // cubit.userLogin(
                                //   username: userName,
                                //   password: password,
                                // );
                              }
                            },
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
