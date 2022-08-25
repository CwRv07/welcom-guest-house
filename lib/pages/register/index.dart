import 'package:flutter/material.dart';
import 'package:welcome_guest_house/routes.dart';
import 'package:welcome_guest_house/widgets/PageContent.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册'),
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
            TextField(
              obscureText: !showPassword,
              decoration: InputDecoration(
                labelText: "重复密码",
                hintText: "请重复输入密码",
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
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(onPressed: () {}, child: Text('注册')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {Navigator.pushNamed(context, Routes.login);}, child: Text('返回登录'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
