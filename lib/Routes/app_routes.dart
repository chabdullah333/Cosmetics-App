part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splashScreen = _Paths.splashScreen;
  static const signIn = _Paths.signIn;
  static const signUp = _Paths.signUp;
  static const bottomNavigationBar = _Paths.bottomNavigationBar;
  static const profileScreen = _Paths.profileScreen;
  static const editAccount = _Paths.editAccount;
  static const selectFilter = _Paths.selectFilter;
  static const orderPreviews = _Paths.orderPreviews;
  static const wishList = _Paths.wishList;
}

abstract class _Paths {
  static const splashScreen = '/splashScreen';
  static const signIn = '/signIn';
  static const signUp = '/signUp';
  static const bottomNavigationBar = '/bottomNavigationBar';
  static const profileScreen = '/profileScreen';
  static const editAccount = '/editAccount';
  static const selectFilter = '/selectFilter';
  static const orderPreviews = '/orderPreviews';
  static const wishList = '/wishList';
}
