import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _textColor = Colors.red;
  String? namePerson;
  final _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  namePerson = value;
                });
              },
              controller: _nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            height: 200,
            width: 600,
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.red,
                width: 5,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TextComponent(
                  namePerson: namePerson ?? 'User!',
                  greetingText: 'Xin chao ',
                  fontSize: 40,
                  textColor: _textColor,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: InkWell(
                    child: const Icon(
                      Icons.access_alarm,
                      color: Colors.red,
                    ),
                    onTap: () {
                      setState(() {
                        _textColor = Colors.green;
                        namePerson = _nameController.text;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TextComponent extends StatelessWidget {
  const _TextComponent({
    Key? key,
    required this.greetingText,
    this.fontSize = 50,
    this.textColor = Colors.green,
    this.namePerson = 'User!',
  }) : super(key: key);
  final String greetingText;
  final double fontSize;
  final Color textColor;
  final String namePerson;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: greetingText,
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
        ),
        children: <TextSpan>[
          TextSpan(
            text: namePerson,
            style: const TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
