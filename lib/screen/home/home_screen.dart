import 'package:btl/widgets/quick_and_fast_list.dart';
import 'package:flutter/material.dart';

import '../../widgets/categories.dart';
import '../../widgets/home_appbar.dart';
import '../../widgets/home_search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCat = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppbar(),
              const SizedBox(height: 20),
              const HomeSearchBar(),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/explore.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Categories(currentCat: currentCat),
              const SizedBox(height: 20),
              const QuickAndFastList(),
            ],
          ),
        ),
      )),
    );
  }
}
