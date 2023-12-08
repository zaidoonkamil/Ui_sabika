import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/navigation_bar/navigation_bar.dart';
import 'package:sabika2/core/widgets/circular_progress.dart';
import 'package:sabika2/core/widgets/custom_button.dart';
import 'package:sabika2/core/widgets/custom_form_field.dart';
import 'package:sabika2/features/auth/forget_password/check_email.dart';
import 'package:sabika2/features/auth/register.dart/view/register.dart';
import 'package:sabika2/features/auth/verify_phone/view/verify_phone.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  static TextEditingController userNameController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Stack(
              children: [
                Theme.of(context).scaffoldBackgroundColor != const Color(0xFF282828)?
                Image.asset('assets/images/UI.png',width: double.maxFinite,):
                Container(),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 100,),
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
                            height: 18,
                          ),
                          GestureDetector(
                            onTap: () {
                              navigateTo(context, const CheckEmail());
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
                              colorText:Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                              colorBottom: Theme.of(context).primaryColor,
                              text: 'تسجيل الدخول',
                              onTap: () {
                                // if (formKey.currentState!.validate()) {
                                //   String userName= userNameController.text.trim();
                                //   String password= passwordController.text.trim();
                                //
                                //   // cubit.userLogin(
                                //   //   username: userName,
                                //   //   password: password,
                                //   // );
                                // }
                                navigateAndFinish(context, const SabikaLayout());
                              },
                            ),
                            fallback: (context)=>
                            const Center(child: CircularProgress(),),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    navigateAndFinish(context, const RegisterScreen());
                                  },
                                  child: Text(
                                    'انشاء حساب ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1,
                                  )),
                              Text('لا امتلك حساب؟',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
