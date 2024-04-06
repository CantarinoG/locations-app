import 'package:flutter/material.dart';
import 'package:locations_app/screens/place_form_screen.dart';
import 'package:locations_app/screens/places_list_screen.dart';
import 'package:locations_app/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meus Lugares',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Colors.indigo,
          secondary: Colors.amber,
          background: Colors.white,
          surface: Colors.white,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onBackground: Colors.black,
          onSurface: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const PlacesListScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.PLACE_FORM: (ctx) => const PlaceFormScreen(),
      },
    );
  }
}
