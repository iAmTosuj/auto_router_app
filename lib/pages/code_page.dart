import 'package:auto_router_project/data/provider/app_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CodePage extends StatelessWidget {
  const CodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
          child: const Text('Login'),
          onTap: () =>
              Provider.of<AppState>(context, listen: false).setLogged(true)),
    ));
  }
}
