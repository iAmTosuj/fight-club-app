import 'package:flutter/material.dart';
import 'package:flutter_fight_club/core/route/app_link.dart';
import 'package:flutter_fight_club/core/state/app_state_manager.dart';
import 'package:flutter_fight_club/resources/colors.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: AppLink.splashPath,
      key: ValueKey(AppLink.splashPath),
      child: SplashScreen(),
    );
  }

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Provider.of<AppStateManager>(context, listen: false).initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ResColors.PURPLE_LIGHT,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text('Initializing...')],
        ),
      ),
    );
  }
}
