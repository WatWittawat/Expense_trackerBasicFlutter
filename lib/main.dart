import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kcolor =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 223, 123, 241));

var kDarkColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 5, 99, 125));
void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kDarkColorScheme.onPrimaryContainer,
          foregroundColor: kDarkColorScheme.primaryContainer,
        ),
        brightness: Brightness.dark,
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.all(10),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: kDarkColorScheme.onSecondaryContainer,
              ),
            ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kcolor,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kcolor.onPrimaryContainer,
          foregroundColor: kcolor.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kcolor.secondaryContainer,
          margin: const EdgeInsets.all(10),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kcolor.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: kcolor.onSecondaryContainer,
              ),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
