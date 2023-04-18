import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
//localization
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:plant_app/constant/app_url.dart';
import 'package:plant_app/data_provider/pref_helper.dart';
import 'package:plant_app/utils/app_version.dart';
import 'package:plant_app/utils/enum.dart';
import 'package:plant_app/utils/navigation.dart';
import 'package:plant_app/utils/network_connection.dart';
import 'package:plant_app/utils/styles/k_colors.dart';

import 'module/module_name/views/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  //Set Potraite Mode only
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(MyApp());
}

/// Make sure you always init shared pref first. It has token and token is need
/// to make API call
initServices() async {
  AppUrlExtention.setUrl(
    UrlLink.isDev,
  );
  await PrefHelper.init();
  await AppVersion.getVersion();
  await NetworkConnection.instance.InternetAvailable();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChannels.textInput.invokeMethod('TextInput.hide');

    return ScreenUtilInit(
        //Change the height and Width based on design
        designSize: const Size(360, 800),
        minTextAdapt: true,
        builder: (ctx, child) {
          return MaterialApp(
            title: 'flutter_app',
            navigatorKey: Navigation.key,
            debugShowCheckedModeBanner: false,
            //localization
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            locale: (PrefHelper.getLanguage() == 1)
                ? const Locale('en', 'US')
                : const Locale('bn', 'BD'),
            theme: ThemeData(
              scaffoldBackgroundColor: KColor.dashBack.color,
              appBarTheme: AppBarTheme(
                color: KColor.secondary.color, //<-- SEE HERE
              ),
              progressIndicatorTheme: ProgressIndicatorThemeData(
                color: KColor.secondary.color,
              ),
              textTheme: GoogleFonts.poppinsTextTheme(),
              primaryColor: KColor.secondary.color,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              colorScheme: ThemeData().colorScheme.copyWith(
                    secondary: KColor.secondary.color,
                  ),
              primarySwatch: KColor.primary.color as MaterialColor,
            ),
            home: child,
          );
        },
        child: HomeScreen());
  }
}
