import 'package:create_ai_genie_web/views/dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1280, 833),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Kids School Web',
            theme: ThemeData(
              scaffoldBackgroundColor: const Color(0xFFF8F8F8),
              appBarTheme: AppBarTheme(backgroundColor: Color(0xFFF8F8F8)),
              // primaryColor: CustomColors.blueColor,
              // colorScheme:
              //     ColorScheme.fromSeed(seedColor: CustomColors.blueColor),
              useMaterial3: true,
            ),
            home: DashboardView(),
            // home: GetStorage().read('isLoggedIn') != null &&
            //         GetStorage().read('isLoggedIn')
            //     ? HomeView()
            //     : LoginView(),
            
          );
        });
  }
}
