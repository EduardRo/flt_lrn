import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final Future<String> _calculation = Future<String>.delayed(
    const Duration(seconds: 10),
    () => '903458390458034985034850 038503495 83405 83045 830458',
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('this is the title'),
        FutureBuilder(
          future: _calculation, // a previously-obtained Future<String> or null
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            List<Widget> childrenot;
            if (snapshot.hasData) {
              childrenot = <Widget>[
                const Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Result: ${snapshot.data}',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 141, 46, 46)),
                  ),
                ),
                Text(
                  'this ${snapshot.data}',
                  style: const TextStyle(color: Colors.white),
                ),
              ];
            } else if (snapshot.hasError) {
              childrenot = <Widget>[
                const Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Error: ${snapshot.error}'),
                ),
              ];
            } else {
              childrenot = const <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CircularProgressIndicator(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('Awaiting result...'),
                ),
              ];
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: childrenot,
            );
          },
        ),
        Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'this is the bottom',
                style: TextStyle(
                  backgroundColor: Colors.blue,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Row(
          textDirection: TextDirection.ltr,
          textBaseline: TextBaseline.alphabetic,
          children: const [
            Text('this is row text'),
            Text('this is nother text'),
          ],
        )
      ],
    );
  }
}
