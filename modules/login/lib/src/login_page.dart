import 'package:flutter/material.dart';
import 'package:imanager/imanager.dart';
import 'package:login/src/model/login_data.dart';
import 'package:imanager/src/proto/event_cmd.pb.dart';
import 'package:imanager/src/proto/login.pb.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({
    super.key,
    required this.title,
  });
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              LoginData.isLogined ? 'Login Success' : 'Please Login',
            ),
            if(!LoginData.isLogined)
              TextButton.icon(onPressed: (){
                setState(() {
                    _showProgressIndicatorDialog(context);
                });
              }, 
                icon: const Icon(Icons.login),
                label: const Text('Login'),
              ),
          ],
        ),
      ),
    );
  }

  void _showProgressIndicatorDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const Dialog(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(width: 16),
                Text("Logging in..."),
              ],
            ),
          ),
        );
      },
    );

    // Simulate a delay for the login process
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pop(); // Close the dialog
      LoginData.isLogined = true;

      if(LoginData.isFinishedRegistered){
        // not finished registered
        ModuleManager.instance.emit(Login, UserRole.REG);
      }else {
        // finished registered
        ModuleManager.instance.emit(Login, UserRole.NORMAL);
      }
      setState(() {});
    });
  }
}
