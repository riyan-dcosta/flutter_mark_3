import 'package:flutter/material.dart';
import 'package:native_mark_3/native_mark_3.dart';

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

  Widget _nativeCallButton() {
    return ElevatedButton(
        onPressed: () {
          NativeMark_3().printInNative();
        }, child: Text("Print from Kotlin Code."));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("mark 3 Home Page"),
      ),
      body: Column(
        children: [
          Center(
            child: Text("add new button here in column"),
          ),
          _nativeCallButton(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.help), Text("Help")],
              ),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: ""),
        ],
        currentIndex: 0, //New
        onTap: (value) {}, //New
      ),
    );
  }
}
