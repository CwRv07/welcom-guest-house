import 'package:welcome_guest_house/routes.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final bool isLogin;
  final String? imageUrl;
  final String? nickName;

  const UserTile({Key? key, this.isLogin = false, this.imageUrl, this.nickName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return  GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, Routes.login);
      },
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 20.0),
              height: 60,
              width: 60,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://tva1.sinaimg.cn/large/006y8mN6ly1g6tbgbqv2nj30i20i2wen.jpg'),
              ),
            ),
            Expanded(
                child: Column(
                  
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nickName ?? "注册/登录",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                if (!isLogin)
                  Text(
                    "登录后可以免费体验更多",
                    style: TextStyle(fontSize: 13.0, color: Colors.white),
                  )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
