import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../../features/discover/view/discover_view.dart';

import '../../features/bookmark/view/bookmark_view.dart';
import '../../features/home/view/home_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineToSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardAppears: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),

        popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
        animationSettings: const NavBarAnimationSettings(
         
          navBarItemAnimation: ItemAnimationSettings(
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
        ),

        
        navBarStyle: NavBarStyle.style7,
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomeView(),
      const DiscoverView(),
      const BookMarkView(),
      const Center(child: Text('Coming soon...')),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.house_fill, color: Colors.white),
        inactiveIcon: const Icon(CupertinoIcons.house_fill),
        title: "Home",
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey,
        activeColorSecondary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.globe, color: Colors.white),
        inactiveIcon: const Icon(CupertinoIcons.globe),
        title: "Discover",
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey,
        activeColorSecondary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.bookmark_fill, color: Colors.white),
        inactiveIcon: const Icon(CupertinoIcons.bookmark),
        title: "Saved",
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey,
        activeColorSecondary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person, color: Colors.white),
        inactiveIcon: const Icon(CupertinoIcons.person),
        title: "Profile",
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey,
        activeColorSecondary: Colors.white,
      ),
    ];
  }
}
