import 'package:flutter/material.dart';
import 'package:flutter_application_9/home/controller/tasks/tasks_cubit.dart';
import 'package:flutter_application_9/home/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context)=>TasksCubit(),)
    ], child: MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'Flutter Demo',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent)
        ),

        textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 17,
          color: Colors.amber,
          fontWeight: FontWeight.bold
        ),
        displaySmall: TextStyle(
          fontSize: 12,
          color: Colors.purple,
          fontWeight: FontWeight.bold,
        )
        ),
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          onPrimary: Colors.blue,
          seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    )
    
    );
  }
}