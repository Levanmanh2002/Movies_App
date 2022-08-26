import 'package:flutter/material.dart';
import 'package:movies_app/Page/login_page.dart';
import 'package:movies_app/Page/security.dart';
import 'package:movies_app/widgets/custom_nav_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _key = GlobalKey<ScaffoldState>();
    return Scaffold(
      body: Scaffold(
        key: _key,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Hồ sơ'),
          backgroundColor: Colors.pink,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                _key.currentState!.openEndDrawer();
              },
            ),
          ],
        ),
        extendBody: true,
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListTile(
                  leading: const Icon(
                    Icons.settings,
                  ),
                  title: const Text('Quyền riêng tư và cài đặt'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecurityPage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            child: Container(
              width: 170,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.red,
              ),
              child: const Center(
                child: Text(
                  'Đăng Nhập',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
