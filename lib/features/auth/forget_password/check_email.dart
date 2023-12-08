import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/widgets/arrow_back.dart';
import 'package:sabika2/core/widgets/custom_button.dart';
import 'package:sabika2/core/widgets/custom_form_field.dart';
import 'package:sabika2/features/auth/forget_password/verify_code.dart';


class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  static TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Stack(
            children: [
              Theme.of(context).scaffoldBackgroundColor != const Color(0xFF282828)?
              Image.asset('assets/images/UI.png',width: double.maxFinite,):
              Container(),              Padding(
                padding: const EdgeInsets.all(30.0),
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
                    const SizedBox(height: 120,),
                    const Text(
                      'ادخل رقم الهاتف',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      'رجائا قم بالتسجيل بأستخدام رقم الهاتف او كلمة المرور لااعادة التفعيل',
                      style: Theme.of(context).textTheme.headline1,
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(height: 30,),
                    CustomFormField(
                      controller: emailController,
                      colorBorder: Theme.of(context).dividerColor,
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'رجائا ادخل رقم الهاتف';
                        }
                        return null;
                      },
                      hintText: 'رقم الهاتف',
                      textInputType: TextInputType.phone,
                    ),
                    const SizedBox(height: 50,),
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
                            navigateTo(context, const VerifyCode(userName: 'ss',));

                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
