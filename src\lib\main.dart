
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubits/auth_cubit.dart';
import 'screens/login/login_screen.dart';
import 'screens/home/home_screen.dart';

void main() {
	runApp(MyApp());
}

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return BlocProvider(
			create: (context) => AuthCubit(),
			child: MaterialApp(
				title: 'My Flutter App',
				theme: ThemeData(
					primarySwatch: Colors.blue,
				),
				home: BlocBuilder<AuthCubit, AuthState>(
					builder: (context, state) {
						if (state.isLoggedIn) {
							return HomeScreen();
						} else {
							return LoginScreen();
						}
					},
				),
			),
		);
	}
}
