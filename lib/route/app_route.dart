import 'package:flutter/material.dart';
import 'package:flutter_fight_club/route/app_state_manager.dart';
import 'package:flutter_fight_club/ui/main_page/main_page.dart';
import 'package:flutter_fight_club/ui/splash/splash_page.dart';

class AppRouter extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  // 2
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final AppStateManager appStateManager;

  AppRouter({
    required this.appStateManager,
  }) : navigatorKey = GlobalKey<NavigatorState>() {
    appStateManager.addListener(notifyListeners);
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: _handlePopPage,
      pages: [
        if (!appStateManager.isInitialized) SplashScreen.page(),
        if (appStateManager.isInitialized) MainPage.page(),
        // TODO: Add HomeScreed
        // TODO: Add FightScreen
        // TODO: Add StatisticScreen
      ],
    );
  }

  @override
  Future<void> setNewRoutePath(configuration) async => null;

  bool _handlePopPage(Route<dynamic> route, result) {
    if (!route.didPop(result)) {
      return false;
    }
    // TODO: Handle splash

    return true;
  }

  @override
  void dispose() {
    appStateManager.removeListener(notifyListeners);

    super.dispose();
  }
}