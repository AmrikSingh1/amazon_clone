import 'package:amazon_clone/common/widgets/bottom_bar.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/home/screens/home_screen.dart';
import 'package:amazon_clone/features/search/screens/search_screen.dart';
import 'package:amazon_clone/features/product_details/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AmazonClone());
}

class AmazonClone extends StatelessWidget {
  const AmazonClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomeScreen.routeName:
            return MaterialPageRoute(
              settings: settings,
              builder: (_) => const HomeScreen(),
            );
          case SearchScreen.routeName:
            var searchQuery = settings.arguments as String;
            return MaterialPageRoute(
              settings: settings,
              builder: (_) => SearchScreen(searchQuery: searchQuery),
            );
          case ProductDetailsScreen.routeName:
            var product = settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(
              settings: settings,
              builder: (_) => ProductDetailsScreen(product: product),
            );
          default:
            return MaterialPageRoute(
              settings: settings,
              builder: (_) => const BottomBar(),
            );
        }
      },
      home: const BottomBar(),
    );
  }
}
