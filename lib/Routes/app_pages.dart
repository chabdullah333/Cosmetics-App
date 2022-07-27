import 'package:daxno_tech_app/Bindings/order_previews_binding.dart';
import 'package:daxno_tech_app/Bindings/select_filter_binding.dart';
import 'package:daxno_tech_app/Bindings/splash_binding.dart';
import 'package:daxno_tech_app/Bindings/wishlist_binding.dart';
import 'package:daxno_tech_app/Screens/Edit%20Account/View/edit_account.dart';
import 'package:daxno_tech_app/Screens/Order%20Previews/View/order_previews.dart';
import 'package:daxno_tech_app/Screens/Select%20Filter/View/select_filter.dart';
import 'package:daxno_tech_app/Screens/Sign%20In/View/sign_in.dart';
import 'package:daxno_tech_app/Screens/Sign%20Up/View/sign_up.dart';
import 'package:daxno_tech_app/Screens/Splash%20Screen/View/splash.dart';
import 'package:daxno_tech_app/Screens/Wishlist/View/wishlist.dart';
import 'package:daxno_tech_app/Widgets/bottom_navigation_bar/View/bottom_navigation_bar.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const initial = Routes.splashScreen;
  static final routes = [
    GetPage(
      name: _Paths.splashScreen,
      page: () => Splash(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.signIn,
      page: () => const SignIn(),
    ),
    GetPage(
      name: _Paths.signUp,
      page: () => const SignUp(),
    ),
    GetPage(
      name: _Paths.bottomNavigationBar,
      page: () => BottomNavigationBarScreen(),
    ),
    GetPage(
      name: _Paths.editAccount,
      page: () => const EditAccount(),
    ),
    GetPage(
      name: _Paths.selectFilter,
      page: () => SelectFilter(),
      binding: SelectFilterBinding(),
    ),
    GetPage(
        name: _Paths.orderPreviews,
        page: () => const OrderPreviews(),
        binding: OrderPreviewsBinding()),
    GetPage(
      name: _Paths.wishList,
      page: () => const WishList(),
      binding: WishListBinding(),
    ),
  ];
}
