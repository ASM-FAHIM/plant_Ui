import 'package:flutter/material.dart';
import 'package:plant_app/module/module_name/views/home_screen.dart';

enum AppRoutes {
  dashboard,
}

extension AppRoutesExtention on AppRoutes {
  Widget buildWidget<T extends Object>({T? arguments}) {
    switch (this) {
      case AppRoutes.dashboard:
        return HomeScreen();
    }
  }
}
