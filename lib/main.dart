import 'package:day11/core/styling/theme_data.dart';
import 'package:day11/core/widgets/buttons/primary_button_widget.dart';
import 'package:day11/core/widgets/buttons/primary_outlined_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          home: child,
        );
      },
      child: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: .center,
            children: [
              PrimaryOutlinedButtonWidget(
                onPressed: () {},
                buttonText: "Register",
              ),
              PrimaryButtonWidget(
                onPressed: () {},
                buttonText: "Login",
                buttonColor: Colors.amberAccent,
              ),

              PrimaryOutlinedButtonWidget(
                onPressed: () {},
                buttonText: "Register",
              ),
              PrimaryButtonWidget(
                onPressed: () {},
                buttonText: "Login",
                buttonColor: Colors.amberAccent,
              ),

              TextField(),
            ],
          ),
        ),
      ),
    );
  }
}
