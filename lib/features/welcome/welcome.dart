import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/styles/colors.dart';
import 'package:sabika2/features/auth/login/view/login.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 26.0),
        child: OnBoard(
          pageController: _pageController,
          onSkip: () {
            // print('skipped');
          },
          onDone: () {
            // print('done tapped');
          },
          onBoardData: onBoardData,
          titleStyles: TextStyle(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w900,
            letterSpacing: 0.15,
          ),
          descriptionStyles: TextStyle(
            fontSize: 14,
            color: Theme.of(context).dividerColor,
          ),
          pageIndicatorStyle: PageIndicatorStyle(
            width: 40,
            inactiveColor: Theme.of(context).dividerColor,
            activeColor: primaryColor,
            inactiveSize: const Size(6, 6),
            activeSize: const Size(8, 8),
          ),
          skipButton: TextButton(
            onPressed: () {
              navigateAndFinish(context, const LoginScreen());
            },
            child: Text(
              "تخطي",
              style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
            ),
          ),
          nextButton: OnBoardConsumer(
            builder: (context, ref, child) {
              final state = ref.watch(onBoardStateProvider);
              return GestureDetector(
                onTap: () => _onNextTap(state,context),
                child: Container(
                  width: 200,
                  height: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient:  LinearGradient(
                      colors: [primaryColor,primaryColor],
                    ),
                  ),
                  child: Text(
                    state.isLastPage ? "البدء" : "التالي",
                    style:  const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState,context) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      navigateAndFinish(context, const LoginScreen());
    }
  }
}

final List<OnBoardModel> onBoardData = [
  const OnBoardModel(
    title: "مرحبا بك في الاتحاد",
    description:
    "اكتشف عالم السبائك الذهبية معنا",
    imgUrl: "assets/images/img.png",
  ),
  const OnBoardModel(
    title: "الامان والسرعة",
    description:
    "لاستخدام التطبيق يتطلب حساب حقيقي والتأكيد\n بواسطة رقم الهاتف",
    imgUrl: 'assets/images/photo_4_2023-06-29_17-33-58.jpg',
  ),
  const OnBoardModel(
    title: "التسوق الالكتروني",
    description:
    "أستمتع بالتسوق والحصول على أفضل المنتجات\n بأفضل الأسعار",
    imgUrl: 'assets/images/photo_7_2023-06-29_17-33-58.jpg',
  ),
];