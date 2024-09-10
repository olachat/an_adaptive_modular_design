// @dart = 2.12

// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:imanager/imanager.dart';
import 'package:login/src/model/login_data.dart';
import 'package:imanager/src/proto/generated/login.pb.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key? key, required this.title}) : super(key: key);
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                LoginData.isFinishedRegistered ? 'Register User info Success' : 'Please input user name',
              ),
            ),
            SizedBox(
              width: 200,
              height: 80,
              child: TextField(
                cursorColor: Colors.grey,
                decoration: const InputDecoration(
                  hintText: "Please input user name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  isDense: true,
                  counterText: '',
                ),
                keyboardType: TextInputType.multiline,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
                controller: TextEditingController(),
                autocorrect: false,
                autofocus: false,
                maxLength: 20,
                maxLines: 1,
                minLines: 1,
                textInputAction: TextInputAction.newline,
                onSubmitted: (value) {},
                inputFormatters: [LengthLimitingTextInputFormatter(20)],
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                keyboardAppearance: Brightness.light,
                onChanged: (value) {
                  LoginData.userName = value;
                },
              ),
            ),
            if (!LoginData.isFinishedRegistered)
              TextButton.icon(
                onPressed: () {
                  if (LoginData.userName.trim().isEmpty) {
                    Fluttertoast.showToast(
                      msg: "Please input user name",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                    return;
                  }
                  setState(() {
                    _showProgressIndicatorDialog(context);
                  });
                },
                icon: const Icon(Icons.person),
                label: const Text('Submit'),
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
                Text("Saving User info..."),
              ],
            ),
          ),
        );
      },
    );

    // Simulate a delay for the login process
    Future.delayed(const Duration(seconds: 1), () {
      LoginData.isFinishedRegistered = true;
      setState(() {});
      Navigator.of(context).pop(); // Close the dialog
      ModuleManager.instance.emit(Register, UserInfo(role: UserRole.NORMAL, username: LoginData.userName));
    });
  }
}
