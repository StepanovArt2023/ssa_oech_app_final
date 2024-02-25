import 'package:flutter/material.dart';
import 'package:ssa_oech_app_final/pages/session_3/transaction_successful_page2.dart';
import 'pages/session_1/holder.dart';
import 'pages/session_1/onboarding1.dart';
import 'pages/session_1/onboarding2.dart';
import 'pages/session_1/onboarding3.dart';
import 'pages/session_1/splash.dart';
import 'pages/session_2/forgot_password.dart';
import 'pages/session_2/loginIn_page.dart';
import 'pages/session_2/new_password_page.dart';
import 'pages/session_2/signUp_page.dart';
import 'pages/session_3/main_page.dart';
import 'pages/session_3/notification_page.dart';
import 'pages/session_3/profile_page.dart';
import 'pages/session_3/receipt_page.dart';
import 'pages/session_3/send_a_package.dart';
import 'pages/session_3/transaction_successful_page.dart';
import 'pages/session_4/add_payment_method.dart';
import 'pages/session_4/wallet_page.dart';
import 'pages/session_5/chats_page.dart';
import 'pages/session_5/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // home: RoundedLoadingIndicator(),
      routes: {
        // 1 session
        '/': (context) => SplashScreen(),
        '/onb1': (context) => const Onboarding1Page(),
        '/onb3': (context) => const Onboarding3Page(),
        '/onb4': (context) => const Onboarding4Page(),
        '/hold': (context) => const HolderPage(),
        // 2 session
        '/signup': (context) => const SignUpPage(),
        '/signin': (context) => const LoginPage(),
        '/forgotpass': (context) => const ForgotPasswoprdPage(),
        '/newpass': (context) => const NewPasswordPage(),
        // 3 session
        '/receipt-page': (context) => const ReceiptPage(),
        '/main-page': (context) => const MainPage(),
        '/profile': (context) => const ProfilePage(),
        '/sendpack': (context) => const SendPackage(),
        '/notification': (context) => const NotificationPage(),
        // 4 session
        '/wall': (context) => const WalletPage(),
        '/RoundedLoadingIndicator': (context) => RoundedLoadingIndicator(),
        '/transaction_succes': (context) => const TransactionSucces(),
        '/add_payment_method': (context) => const AddMethod(),

        // 5 session
        '/home-page': (context) => const HomePage(),
        '/chats-page': (context) => const ChatsPage(),
      },
    );
  }
}
