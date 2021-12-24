import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _textColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.blueGrey[100],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.red,
              width: 5,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _TextComponent(
                greetingText: 'Xin chao ',
                fontSize: 40,
                textColor: _textColor,
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: InkWell(
                    child: Icon(
                      Icons.access_alarm,
                      color: Colors.red,
                    ),
                    onTap: () {
                      setState(() {
                        _textColor = Colors.green;
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextComponent extends StatefulWidget {
  const _TextComponent({
    Key? key,
    required this.greetingText,
    this.fontSize = 50,
    this.textColor = Colors.green,
  }) : super(key: key);
  final String greetingText;
  final double fontSize;
  final textColor;
  @override
  State<_TextComponent> createState() => _TextComponentState();
}

class _TextComponentState extends State<_TextComponent> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: widget.greetingText,
        style: TextStyle(
          fontSize: widget.fontSize,
          color: widget.textColor,
        ),
        children: const <TextSpan>[
          TextSpan(
            text: 'Beautiful ',
            style: TextStyle(
              color: Colors.green,
            ),
          ),
          TextSpan(
            text: 'World',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
