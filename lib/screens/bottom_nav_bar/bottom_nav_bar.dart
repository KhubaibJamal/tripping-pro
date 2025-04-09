import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripping_pro/res/constants/media_constants.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/screens/home/home_screen.dart';
import 'package:tripping_pro/screens/widgets/custom_safearea.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      const HomeScreen(),
      Container(color: Colors.blue),
      Container(color: Colors.red),
      Container(color: Colors.pink),
      Container(color: Colors.black),
    ];
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(screens.length, (index) => screens[index]),
      ),
      bottomNavigationBar: CustomSafeArea(
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(color: CustomColors.textFieldFillColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNavItem(
                svgIcon: MediaConstants.home,
                svgFilledIcon: MediaConstants.homeFilled,
                index: 0,
              ),
              _buildNavItem(
                svgIcon: MediaConstants.explore,
                svgFilledIcon: MediaConstants.exploreFilled,
                index: 1,
              ),
              _buildNavItem(
                svgIcon: MediaConstants.notification,
                svgFilledIcon: MediaConstants.notification,
                index: 2,
              ),
              _buildNavItem(
                svgIcon: MediaConstants.profile,
                svgFilledIcon: MediaConstants.profile,
                index: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required String svgIcon,
    required String svgFilledIcon,
    required int index,
  }) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: SvgPicture.asset(
        isSelected ? svgFilledIcon : svgIcon,
        height: 24,
        width: 24,
      ),
    );
  }
}
