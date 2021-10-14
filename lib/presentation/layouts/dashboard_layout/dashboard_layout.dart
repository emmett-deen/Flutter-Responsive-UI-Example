import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui_example/presentation/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardLayout extends StatelessWidget {
  final Widget child;
  final String title;
  const DashboardLayout({Key? key, required this.child, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: false,
        ),
        drawer: _buildDrawer(context),
        body: ScreenTypeLayout(
          mobile: child,
          desktop: Row(
            children: [
              const NavigationDrawer(),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: child,
              )),
            ],
          ),
        ));
  }

  Widget? _buildDrawer(BuildContext context){
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    if(deviceType != DeviceScreenType.desktop){
      return const NavigationDrawer();
    }
  }
}
