import 'package:app/evn.dart';
import 'package:app_logger/app_logger.dart';
import 'package:flutter/material.dart';

void main() {
  final env = AppEnv.initFromConsole();
  runApp(MaterialApp(
    title: 'Env test',
    theme: ThemeData.light(),
    home: HomePage(env),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage(this.env, {Key? key}) : super(key: key);

  final AppEnv env;


  //TODO
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('baseUrl:${env.baseUrl}'),
            Text('flavor:${env.flavor}')
          ],
        ),
      ),
    );
  }
}
