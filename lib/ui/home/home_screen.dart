import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warung_makan/core/utils/constants.dart';
import 'package:warung_makan/di/injector.dart';
import 'package:warung_makan/ui/home/cubits/restaurants_cubit.dart';
import 'package:warung_makan/ui/home/tabs/restaurants_tab.dart';
import 'package:warung_makan/ui/home/tabs/settings_tab.dart';
import 'package:warung_makan/ui/search/restaurant_search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> _navigation;

  @override
  void initState() {
    _navigation = [
      BlocProvider(
        create: (context) => injector<RestaurantsCubit>()..loadRestaurants(),
        child: RestaurantsTab(),
      ),
      SettingsTab(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Warung Makan',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, FavoritePageRoute),
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () => showSearch(
                context: context, delegate: RestaurantSearchScreen()),
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _navigation,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Restaurants',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _selectNavigation,
      ),
    );
  }

  void _selectNavigation(int index) {
    setState(() => _selectedIndex = index);
  }
}
