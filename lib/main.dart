import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'shared/constants/constants.dart';
import 'viewmodels/custom_text_field_view_model.dart';
import 'viewmodels/dependency_change_view_model.dart';
import 'viewmodels/home_viewmodel.dart';
import 'views/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

final GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Constants.kGlobalSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider<HomeViewModel>(
            create: (_) => HomeViewModel(),
          ),
          ChangeNotifierProvider<LifecycleHandler>(
            create: (_) => LifecycleHandler(),
          ),
          ChangeNotifierProvider<TextFieldProvider>(
            create: (_) => TextFieldProvider(),
          ),
        ],
        child: MaterialApp(
          navigatorKey: appNavigatorKey,
          debugShowCheckedModeBanner: false,
          title: Constants.appTitleText,
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
