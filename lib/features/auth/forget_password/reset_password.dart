import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/widgets/arrow_back.dart';
import 'package:sabika2/core/widgets/custom_button.dart';
import 'package:sabika2/core/widgets/custom_form_field.dart';
import 'package:sabika2/features/auth/login/view/login.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key, required this.codeVerify});

  final String codeVerify;
  static TextEditingController passwordOneController = TextEditingController();
  static TextEditingController passwordTowController = TextEditingController();
  static var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Theme.of(context).scaffoldBackgroundColor != const Color(0xFF282828)?
            Image.asset('assets/images/UI.png',width: double.maxFinite,):
            Container(),            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        ArrowBack(
                          onTap: (){
                            navigateBack(context);
                          },
                          icon:const Icon(Icons.arrow_back_ios_new),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 120,
                    ),
                    const Text(
                      'كلمة المرور الجديدة',style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'رجائا قم بادخال كلمة المرور الجديدة',
                      style: Theme.of(context)
                          .textTheme
                          .headline1,
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomFormField(
                      colorBorder: Theme.of(context).dividerColor,
                      controller: passwordOneController,
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'رجائا ادخل كلمة المرور الجديدة';
                        }
                        return null;
                      },
                      hintText: 'كلمة المرور الجديدة',
                      textInputType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomFormField(
                      colorBorder: Theme.of(context).dividerColor,
                      controller: passwordTowController,
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'رجائا اعد ادخال كلمة المرور الجديدة';
                        }
                        return null;
                      },
                      hintText: 'اعد كتابة كلمة المرور',
                      textInputType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomBottom(
                          height: 36,
                          width: 100,
                          borderRadius: BorderRadius.circular(20),
                          colorBottom: Theme.of(context).primaryColor,
                          text: 'ارسال',
                          onTap: () {
                            navigateTo(context, const LoginScreen());

                          },
                        ),
                      ],
                    ),              ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
