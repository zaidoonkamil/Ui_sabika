import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/widgets/arrow_back.dart';
import 'package:sabika2/features/update_profile/view/update_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  static bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), // Adjust the radius as needed
            bottomLeft: Radius.circular(20.0), // Adjust the radius as needed
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ArrowBack(onTap: (){
                  Navigator.pop(context);
                }, icon: const Icon(Ionicons.close)),
                const SizedBox(height: 40,),
                const Text('الاعدادات'),
                const SizedBox(height: 10,),
                Stack(
                  children: [
                    const Divider(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.5,
                          height: 4,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Switch(
                      trackOutlineColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                        // Change the color of the thumb based on its state
                        if (states.contains(MaterialState.selected)) {
                          return Theme.of(context).scaffoldBackgroundColor; // Color when the switch is ON
                        }
                        return Theme.of(context).scaffoldBackgroundColor;  // Color when the switch is OFF
                      }),
                      // inactiveThumbColor: Theme.of(context).scaffoldBackgroundColor,
                      // focusColor:  Theme.of(context).scaffoldBackgroundColor,
                      activeColor: Theme.of(context).primaryColor,
                      value: switchValue,
                      onChanged: (value) {
                        // setState(() {
                          switchValue = value;
                        // });
                      },
                    ),                    const Spacer(),
                    const Text('اللغة العربية'),
                    Image.asset('assets/images/Translate.png',width: 26,height: 26,),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    const Icon(Icons.keyboard_arrow_down_outlined),
                    const Spacer(),
                    const Text('الوضع اليلي'),
                    Image.asset('assets/images/Vector (4).png',width: 26,height: 26,),
                  ],
                ),
                const SizedBox(height: 60,),
                const Text('تواصل معنا'),
                const SizedBox(height: 10,),
                Stack(
                  children: [
                    const Divider(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.5,
                          height: 4,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('واتساب'),
                    const SizedBox(width: 8,),
                    Image.asset('assets/images/WhatsApp.png',width: 26,height: 26,),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('مسنجر'),
                    const SizedBox(width: 8,),
                    Image.asset('assets/images/Messenger.png',width: 24,height: 24,),
                  ],
                ),
                const SizedBox(height: 80,),
                Center(
                  child: Container(
                    width: 128,
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFFFD4D1)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('تسجيل الخروج',style: TextStyle(color:Color(0xFFFF7D6F) ),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(width: 10,height: 10,color: Theme.of(context).primaryColor,),
                      const Text('الملف الشخصي'),
                      ArrowBack(onTap: (){
                        scaffoldKey.currentState?.openEndDrawer();
                      }, icon: const Icon(Ionicons.settings_outline)),

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
                  const SizedBox(height: 6,),
                  const Text('محمد طاهر بدر'),
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.all(24),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).backgroundColor,
                            offset: const Offset(0, 2),
                            blurRadius: 6,
                            spreadRadius: 0,
                          ),
                        ],
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).cardColor
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('المعلومات الشخصية',style: Theme.of(context).textTheme.headline1,),
                        const SizedBox(height: 10,),
                        Stack(
                          children: [
                            Divider(height: 4,color: Theme.of(context).dividerColor,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.5,
                                  height: 4,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).scaffoldBackgroundColor
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text('07716210021'),
                                  const SizedBox(width: 8,),
                                  Image.asset('assets/images/phoneprimary.png'),

                                ],
                              ),
                              const SizedBox(height: 16,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text('بغداد'),
                                  const SizedBox(width: 8,),
                                  Image.asset('assets/images/Vector (1).png'),

                                ],
                              ),
                              const SizedBox(height: 16,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text('2000/01/13'),
                                  const SizedBox(width: 8,),
                                  Image.asset('assets/images/Vector (2).png'),

                                ],
                              ),
                              const SizedBox(height: 16,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text('ذكر'),
                                  const SizedBox(width: 8,),
                                  Image.asset('assets/images/Vector (3).png'),

                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 36,),
                        Center(
                          child: GestureDetector(
                            onTap: (){
                              navigateTo(context, const UpdateProfile());
                            },
                            child: Container(
                              width: 180,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                                  borderRadius: BorderRadius.circular(26)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('تعديل الملف',style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),),
                                  const SizedBox(width: 8,),
                                  Image.asset('assets/images/edit.png'),
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
