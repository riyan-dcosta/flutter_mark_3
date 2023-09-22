import 'package:flutter_micro_app/flutter_micro_app.dart';

class HomePageRoute extends MicroAppBaseRoute{
  @override
  MicroAppRoute get baseRoute => MicroAppRoute('homePageRoute');

  String get homePage => path(['home-page']);


}