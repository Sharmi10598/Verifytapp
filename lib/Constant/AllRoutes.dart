import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:verifytapp/Constant/ConstantRoutes.dart';
import 'package:verifytapp/Pages/AuditPages/Widgets/AuditOpenPage.dart';
import 'package:verifytapp/Pages/OutWard/Widgets/OutwardScree.dart';
import 'package:verifytapp/Pages/DashBoardPages/Screens/DashBoardScreens.dart';
import 'package:verifytapp/Pages/DashBoardPages/Widgets/HomePage.dart';
import 'package:verifytapp/Pages/Inward/widgets/InwardScreen.dart';
import 'package:verifytapp/Pages/LoginPage/Screens/LoginScreens.dart';

class Routes {
  static List<GetPage> allRoutes = [
    GetPage<dynamic>(
        name: ConstantRoutes.login,
        page: () => const LoginPageScreens(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage<dynamic>(
        name: ConstantRoutes.dashboard,
        page: () => const DashboardScreens(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage<dynamic>(
        name: ConstantRoutes.homepage,
        page: () => const HomePage(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage<dynamic>(
        name: ConstantRoutes.binScreen,
        page: () => const BinScreenPage(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage<dynamic>(
        name: ConstantRoutes.searchScreen,
        page: () => const SearchScreenPage(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage<dynamic>(
        name: ConstantRoutes.audit,
        page: () => const AuditingOpenScreen(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
  ];
}
