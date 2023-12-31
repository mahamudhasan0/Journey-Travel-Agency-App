import 'package:get/get.dart';
import 'package:tour/ui/views/onboarding_screen.dart';
import 'package:tour/ui/views/splash_screen.dart';

const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';

//control our page route flow
List<GetPage> getPages =[
  GetPage(name: splash, page: ()=> SplashScreen()),
  GetPage(name: onboarding, page: ()=> OnboardingScreen()),
];
