import 'package:matule/layers/domain/entity/user.dart';
import 'package:sqflite/sqflite.dart';


class UserRepository {
  late Database db;

  UserRepository._();

  static final UserRepository _instance = UserRepository._();

  factory UserRepository() => _instance;

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

  Future<List<Map<String, dynamic>>> getAllUsers(int id) async {
    List<Map> maps = await db.query('users');
        return maps as List<Map<String, dynamic>>;
  }
}
