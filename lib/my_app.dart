import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_bloc_simples3/blocs/counter_bloc.dart';
import 'package:teste_bloc_simples3/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => CounterBloc(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Exemplo BLoC 3',
          theme: ThemeData(
            colorScheme: ColorScheme.dark(),
            useMaterial3: true,
          ),
          home: HomePage(),
        )
    );
  }
}
