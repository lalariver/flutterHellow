import 'package:flutter/material.dart';
import 'custom_text.dart';

void _onPressed() {
  print('button pressed');
}

void _onLongPress() {
  print('long press');
}

String buutonText = 'Press Me';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: const Text("First Project"),
        ),
        backgroundColor: const Color.fromRGBO(223, 223, 223, 1),
        body: const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "First Text",
              containerColor: Colors.blue,
              textColor: Colors.white,
            ),
            CustomText(
              text: "Second Text",
              containerColor: Colors.black,
              textColor: Colors.red,
            ),
            ButtonWidget(),
          ],
        ))),
  ));
  // runApp(Myapp());
}

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  void _changeText() {
    setState(() {
      buutonText = 'button pressed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _changeText,
        onLongPress: _onLongPress,
        child: Text(buutonText));
  }
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Center(
      child: Text("Hello World"),
    ));
  }
}
