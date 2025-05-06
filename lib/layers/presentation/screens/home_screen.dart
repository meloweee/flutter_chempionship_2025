import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matule/core/brand/brand_colors.dart';
import 'package:matule/layers/domain/entity/user.dart';
import 'package:matule/layers/domain/repository/user_repository.dart';
import 'package:sqflite/sqflite.dart';

/// Home Screen
/// 06.05.2025
/// M9M9Ra
/// ----------------------------------------------
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<User>> _init() async {
    var databasesPath = await getDatabasesPath();
    String path = '$databasesPath/demo.db';
    await UserRepository().open(path);
    List<Map> usersMaps = await UserRepository().getAllUsers(1);
    List<User> users =
        usersMaps.map((json) {
          return User.fromMap(json as Map<String, dynamic>);
        }).toList();
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                
                Text(context.tr('hello')),

                IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bag)),
              ],
            ),
          ),
          SizedBox(height: 24),
          FutureBuilder(
            future: _init(),
            builder: (context, snapshot) {
              List<Widget> userList = [];
              if (snapshot.hasData) {
                userList =
                    snapshot.data!.map((User user) {
                      return Container(
                        height: 64,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: BrandColors.subTextLight,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(6),
                        margin: EdgeInsets.only(
                          bottom: 12,
                          left: 20,
                          right: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(user.name, textAlign: TextAlign.start),
                            SizedBox(height: 4),
                            Text(user.lastName, textAlign: TextAlign.start),
                          ],
                        ),
                      );
                    }).toList();
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:
                    userList.isNotEmpty
                        ? userList
                        : [
                          SizedBox(
                            width: 65,
                            height: 65,
                            child: CircularProgressIndicator(),
                          ),
                        ],
              );
            },
          ),
        ],
      ),
    );
  }
}
