import 'package:flutter/material.dart';
import 'package:welcome_guest_house/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            /* 账号输入框 */
            TextField(
              decoration: InputDecoration(
                  labelText: "账号",
                  hintText: "请输入账号",
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              obscureText: !showPassword,
              decoration: InputDecoration(
                labelText: "密码",
                hintText: "请输入密码",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                      showPassword ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
                // border: OutlineInputBorder(borderSide: BorderSide(width: 1.0))
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(onPressed: () {}, child: Text('登录')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {}, child: Text('找回密码')),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.register);
                    },
                    child: Text('前往注册'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
