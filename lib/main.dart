import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warung_makan/core/utils/constants.dart';
import 'package:warung_makan/di/injector.dart';
import 'package:warung_makan/ui/detail/cubits/favorite/favorite_button_cubit.dart';
import 'package:warung_makan/ui/favorite/cubit/favorite_restaurant_cubit.dart';
import 'package:warung_makan/ui/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FavoriteRestaurantCubit>(
          create: (context) => injector<FavoriteRestaurantCubit>(),
        ),
        BlocProvider<FavoriteButtonCubit>(
          create: (context) => injector<FavoriteButtonCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'Warung Makan',
        theme: ThemeData(
          primaryColorDark: Color(0xFFF8AC83),
          primaryColorLight: Color(0xfffef0e8),
          primaryColor: Color(0xFFf25b0a),
          accentColor: Color(0xfff1ac18),
          dividerColor: Color(0xffbdbdbd),
          fontFamily: 'Raleway',
          appBarTheme: AppBarTheme(
            color: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: generateRoute,
        initialRoute: SplashPageRoute,
      ),
    );
  }
}
