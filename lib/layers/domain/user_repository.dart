import 'package:matule/layers/domain/user.dart';
import 'package:sqflite/sqflite.dart';

class UserRepository {
  late Database db;

  Future<void> open(String path) async {
    db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async => await db.execute('create table users (id integer primary key autoincrement, name text, lastName text)'),
    );
  }

  Future<User> createUser(User user) async {
    user.id = await db.insert('users', user.toMap());
    return user;
  } 

  Future<User?> getAllUsers(int id) async {
    List<Map> maps = await db.query('users',
        where: '*',);
    if (maps.length > 0) {
      return User.fromMap(maps.first as Map<String, dynamic>);
    }
    return null;
  }
}
