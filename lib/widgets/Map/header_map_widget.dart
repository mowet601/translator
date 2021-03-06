import 'package:flutter/material.dart';

class HeaderInfo extends StatelessWidget {
  final String text;
  const HeaderInfo({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/skater.png'),
          ),
          title: Text(
            'Carlos',
            style: TextStyle(color: Colors.black),
          ),
          subtitle: Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
          trailing: Icon(
            Icons.g_translate,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('home', (route) => false);
          },
        ),
      ),
    );
  }
}
