import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_ui/presentation/pages/account_page.dart';
import 'package:travel_ui/presentation/pages/explore_page.dart';
import 'package:travel_ui/presentation/pages/favorites_page.dart';
import 'package:travel_ui/presentation/pages/home/home_page.dart';

class BottomNavController extends HookConsumerWidget {
  const BottomNavController({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final pages = [
      const HomePage(),
      const ExplorePage(),
      const FavioritesPage(),
      const AccountPage(),
    ];
    final currentIndex = useState(0);

    return Scaffold(
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              elevation: 5,
              selectedItemColor: Colors.blue,
              backgroundColor: const Color(0xff282E3A),
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: const Color(0xffA6A7AD),
              currentIndex: currentIndex.value,
              selectedLabelStyle: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore), label: "Explore"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: "Faviorites"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Account"),
              ],
              onTap: (index) {
                currentIndex.value = index;
                // setState(() {
                //   _currentIndex = index;
                //   print(_currentIndex);
                // });
              },
            ),
          )),
      body: pages[currentIndex.value],
    );
  }
}
