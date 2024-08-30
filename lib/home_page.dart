import 'package:flutter/material.dart';
import 'package:ostad_assignment_mod12/dextop_body.dart';
import 'package:ostad_assignment_mod12/mobile_body.dart';
import 'package:ostad_assignment_mod12/resposive_layout.dart';
import 'package:ostad_assignment_mod12/tab_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          mobileBody: MobileBody(),
          tabBody: TabBody(),
          desktopBody: DextopBody(),
      ),
    );
  }
}
