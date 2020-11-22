import 'package:flutter/cupertino.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Text('data'),
    );
  }
}
