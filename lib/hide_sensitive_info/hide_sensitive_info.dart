import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FirstPage extends StatefulHookWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    final state = useAppLifecycleState();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hide sensitive info of an app'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Opacity(
          opacity: state == AppLifecycleState.resumed ? 1.0 : 0.0,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset('assets/image.jpg'),
              ),
              const SizedBox(height: 15),
              const Text(
                'Flutter provides us with our application\'s life-cycyle events such as when it is paused or when its execution is resumed.',
              )
            ],
          ),
        ),
      ),
    );
  }
}
