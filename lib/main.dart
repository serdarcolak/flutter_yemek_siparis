import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yemek_siparis_app/ui/cubit/anasayfa_cubit.dart';
import 'package:yemek_siparis_app/ui/view/anasayfa.dart';


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _SearchBarAppState();
}

class _SearchBarAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {


    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AnasayfaCubit()),
      ],
      child: MaterialApp(
        title: 'Yemekler',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Anasayfa(),
      ),
    );
  }
}
