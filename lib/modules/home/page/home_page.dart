import 'package:dragonfruit/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incrementCounter,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.purple,
          child: Observer(
            builder: (BuildContext context) {
              return Text('Valor do counter: ${controller.homeStore.counter}');
            },
          ),
        ),
      ),
    );
  }
}
