import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Controllers/DashBoardController/DashBoradControllers.dart';

class NavigationBtnScreens extends StatelessWidget {
  const NavigationBtnScreens({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_comment_rounded),
            label: 'Audit',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Bin',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 25,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Config',
          ),
        ],
        currentIndex: context.watch<DashBoardCtrlProvider>().selectedIndex,
        selectedItemColor: const Color(0xFF009292),
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(
          color: Color(0xFF009292),
        ),
        showUnselectedLabels: true,
        onTap: context.read<DashBoardCtrlProvider>().onItemTapped,
      ),
    );
  }
}



// Future<bool> onbackpress(BuildContext context) {
//   if (context.read<DashBoardCtrlProvider>().selectedIndex == 0) {
//     Get.offAllNamed(ConstantRoutes.login);
//     return Future.value(true);
//   } else {
//     context.read<DashBoardCtrlProvider>().onItemTapped(0);
//   }
//   return Future.value(false);
// }
