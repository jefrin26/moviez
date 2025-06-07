import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:moviez/firebase_options.dart';
import 'package:moviez/view/login_screen/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(148, 96, 125, 139),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}
