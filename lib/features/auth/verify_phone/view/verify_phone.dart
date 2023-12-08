import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/widgets/arrow_back.dart';

class VerifyPhone extends StatelessWidget {
  const VerifyPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            Theme.of(context).scaffoldBackgroundColor != const Color(0xFF282828)?
            Image.asset('assets/images/UI.png',width: double.maxFinite,):
            Container(),            Padding(
              padding: const EdgeInsets.all(24.0),
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
                  const Text('تاكيد رقم الهاتف',style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    'رجائا قم بتفعيل الحساب من خلال الرسالة التي ارسلت الى رقم الهاتف او قم بأعادة ارسال رسالة التحقق من خلال الضغط على اعادة الارسال ',
                    style: Theme.of(context).textTheme.headline1,
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(height: 40,),
                  OtpTextField(
                    borderRadius: BorderRadius.circular(16),
                    numberOfFields: 5,
                    keyboardType: TextInputType.phone,
                    cursorColor: Theme.of(context).primaryColor,
                    focusedBorderColor: Theme.of(context).primaryColor,
                    showFieldAsBox: true,
                    onCodeChanged: (String code) {
                    },
                    onSubmit: (String verificationCode){

                    }, // end onSubmit
                  ),

                  const SizedBox(height: 80,),
                  Text(
                    'اعادة ارسال رمز التاكيد',
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
