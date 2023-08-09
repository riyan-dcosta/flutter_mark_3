import 'package:flutter/material.dart';
import 'package:micro_common_app/micro_common_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: MaTheme.maLightTheme,
        // darkTheme: MaTheme.maLightTheme,
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      appBar: const MaAppBar(
        title: Text("JHello"),
      ),
      body: Column(
        children: [
          MaElevatedButton(
            onPressed: () {},
            child: const Text("Elevated Button"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Flat Button"),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: MaIconButton(
              text: "Hello",
              iconData: Icons.help,
              // themeColor: MaTheme.maLightTheme.primaryColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: MaTextField(
              labelText: "Password",
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: MaTextField(
              labelText: "New Password",
            ),
          )
          // ElevatedButton(onPressed: (){}, child: Text("Elevated Button")),
          // ElevatedButton(onPressed: null, child: Text("Elevated Button"))
        ],
      ),
    );
  }
}
