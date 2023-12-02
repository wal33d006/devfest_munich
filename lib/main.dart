import 'package:devfest_munich/users_list_cubit.dart';
import 'package:devfest_munich/users_list_page.dart';
import 'package:devfest_munich/users_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void main() async {
  getIt.registerSingleton<UsersRepository>(RestApiUsersRepository());
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UsersListCubit(getIt())..fetchUsers(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UsersListPage(),
    );
  }
}
