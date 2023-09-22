import 'package:flutter/material.dart';
import 'package:flutter_micro_app/flutter_micro_app.dart';

import 'ma_routes/routes/home_page_route.dart';

class FlutterMark3 extends MicroAppWithBaseRoute with HandlerRegisterMixin {
  @override
  HomePageRoute get baseRoute => HomePageRoute();

  @override
  String get name => 'flutter_mark_3';

  @override
  String get description => 'this is a micro app';

  @override
  List<MicroAppPage<Widget>> get pages => [
        MicroAppPage<MicroAppNavigatorWidget>(
          route: baseRoute.homePage,
          pageBuilder: PageBuilder(
            builder: (BuildContext context, RouteSettings settings) {
              return MicroAppNavigatorWidget(
                microBaseRoute: baseRoute,
                initialRoute: HomePageRoute().homePage,
              );
            },
            transitionType: MicroPageTransitionType.rippleLeftDown,
          ),
        ),
      ];
}
