import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/core/network/local_save_storege/cache_helper.dart';
import 'package:sabika2/features/auth/login/view/login.dart';


const String nameOfApp='سبائك الاتحاد';
const String errorServer='حدثت مشكلة';
const String errorGetData='حدث خطأ اثناع عملية جلب البيانات';
const String imageWelcomeOne='assets/images/images copy.png';
const String imageWelcomeTow='assets/images/fff.png';
const String imageWelcomeThree='assets/images/photo_4_2023-06-29_17-33-58.jpg';
const String imageErrorLoading='assets/images/img.png';
String? token = '';
int? adminOrUser ;

void signOut(context)
{
  CacheHelper.removeData(
    key: 'token',
  ).then((value)
  {
    if (value)
    {
      navigateAndFinish(
        context,
        const LoginScreen(),
      );
    }
  });
}
