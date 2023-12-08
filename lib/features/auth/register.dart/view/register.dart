import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/widgets/circular_progress.dart';
import 'package:sabika2/core/widgets/custom_button.dart';
import 'package:sabika2/core/widgets/custom_form_field.dart';
import 'package:sabika2/features/auth/login/view/login.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  static TextEditingController phoneNameController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();


  static TextEditingController userNameController = TextEditingController();
  static TextEditingController firstNameController = TextEditingController();
  static TextEditingController secondNameController = TextEditingController();
  static TextEditingController thirdNameController = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController locationController = TextEditingController();
  static TextEditingController cityNameController = TextEditingController();
  static TextEditingController provinceController = TextEditingController();
  static TextEditingController dataTimeController = TextEditingController();
  static TextEditingController textGenderController = TextEditingController();
  static TextEditingController genderController = TextEditingController();
  static List<String> textGender = [
    'ذكر',
    'انثى',
    'لا ارغب بالافصاح',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Theme.of(context).scaffoldBackgroundColor != const Color(0xFF282828)?
            Image.asset('assets/images/UI.png',width: double.maxFinite,):
            Container(),            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 60,),
                      Image.asset(
                        'assets/images/img.png',
                        fit: BoxFit.cover,
                        height: 145,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text('... مرحبا بكم',),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomFormField(
                        controller: userNameController,
                        textInputType: TextInputType.phone,
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'رجائا ادخل رقم الهاتف';
                          }
                        },
                        hintText: 'رقم الهاتف',
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      CustomFormField(
                        controller: passwordController,
                        validate: (String? value) {
                          if (value!.isEmpty ) {
                            return 'رجائا ادخل كلمة المرور';
                          }
                        },
                        hintText: 'كلمة المرور',
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomFormField(
                              controller: passwordController,
                              validate: (String? value) {
                                if (value!.isEmpty ) {
                                  return 'رجائا ادخل المدينة';
                                }
                              },
                              hintText: 'المدينة',
                            ),
                          ),
                          const SizedBox(width: 8,),
                          Expanded(
                            child: CustomFormField(
                              textInputType: TextInputType.none,
                              controller: passwordController,
                              validate: (String? value) {
                                if (value!.isEmpty ) {
                                  return 'رجائا ادخل المحافضة';
                                }
                              },
                              hintText: 'المحافضة',
                              icon: Icon(Icons.keyboard_arrow_down_outlined,color: Theme.of(context).dividerColor,),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomFormField(
                              controller: passwordController,
                              validate: (String? value) {
                                if (value!.isEmpty ) {
                                  return 'رجائا ادخل المواليد';
                                }
                              },
                              hintText: 'المواليد',
                              icon: Icon(Ionicons.calendar,color: Theme.of(context).dividerColor,),
                            ),
                          ),
                          const SizedBox(width: 8,),
                          Expanded(
                            child: CustomFormField(
                              textInputType: TextInputType.none,
                              controller: passwordController,
                              validate: (String? value) {
                                if (value!.isEmpty ) {
                                  return 'رجائا ادخل الجنس';
                                }
                              },
                              hintText: 'الجنس',
                              icon: Icon(Icons.keyboard_arrow_down_outlined,color: Theme.of(context).dividerColor,),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 18,
                      ),
                      GestureDetector(
                          onTap: () {
                            // navigateTo(context, const CheckEmail());
                          },
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('؟ ',style: Theme.of(context).textTheme.bodyText1,),
                              Text('نسيت كلمة المرور  ',style: Theme.of(context).textTheme.headline1,),
                            ],
                          )
                      ),
                      const SizedBox(
                        height: 62,
                      ),
                      ConditionalBuilder(
                        condition: true,
                        builder: (context)=> CustomBottom(
                          // height: 60,
                          width: 160,
                          borderRadius: BorderRadius.circular(20),
                          colorBottom: Theme.of(context).primaryColor,
                          text: 'انشاء حساب',
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              String userName= userNameController.text.trim();
                              String password= passwordController.text.trim();

                              // cubit.userLogin(
                              //   username: userName,
                              //   password: password,
                              // );
                            }
                          },
                        ),
                        fallback: (context)=>
                        const Center(child: CircularProgress(),),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                navigateAndFinish(context, const LoginScreen());
                              },
                              child: Text(
                                'تسجيل الدخول ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1,
                              )),
                          Text('امتلك حساب ؟',
                            style: Theme.of(context)
                                .textTheme
                                .headline1,),
                        ],
                      ),
                      const SizedBox(height: 60,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
