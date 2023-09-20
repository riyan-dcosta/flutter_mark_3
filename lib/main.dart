import 'package:flutter/material.dart';
import 'package:flutter_mark_3/features/image_viewer/presentation/pages/image_viewer.dart';
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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const ImageViewer();
              }));
            },
            child: const Text("Image Viewer"),
          ),
          // MaFlatButton(
          //   onPressed: () {},
          //   child: const Text("Flat Button"),
          // ),
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
          // const Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: MaTextField(
          //     labelText: "New Password",
          //   ),
          // ),
          // ElevatedButton(onPressed: (){}, child: Text("Elevated Button")),
          // ElevatedButton(onPressed: null, child: Text("Elevated Button"))
          const MaDateTimePicker(),
          MaDateTimePicker2(
            selectedDateRange: (DateTimeRange? value) {
              print(value);
            },
          ),
          MaBottomNavBar(
            items: const [
              MaBottomNavItems(
                text: "Home",
                iconData: Icons.home,
                backgroundColor: Colors.white,
              ),
              MaBottomNavItems(
                  text: "Account", iconData: Icons.account_balance),
              MaBottomNavItems(text: "Cards", iconData: Icons.credit_card),
              MaBottomNavItems(text: "Transfer", iconData: Icons.money),
              MaBottomNavItems(
                  text: "Account", iconData: Icons.account_balance),
            ],
            onPressed: (int value) {
              print(value);
            },
          ),
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
