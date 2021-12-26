import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';
import './config/config.dart';
import './routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeBloc()),
        BlocProvider(create: (context) => HistoryBloc()),
        BlocProvider(create: (context) => CityWeatherBloc()),
      ],
      child: MaterialApp(
        title: appName,
        theme: ThemeConfig.darkTheme,
        darkTheme: ThemeConfig.darkTheme,
        onGenerateRoute: routes,
      ),
    );
  }
}
