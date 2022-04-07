import 'package:bloc_advance/models/customers_model.dart';
import 'package:bloc_advance/models/customers_receive.dart';
import 'package:bloc_advance/models/users_model.dart';
import 'package:bloc_advance/services/db_query.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  static final _tables = [
    UsersQuery.createTable,
    CustomersQuery.createTable,
  ];
  static Future createTable(Database db) async {
    for (var item in _tables) {
      await db.execute(item);
    }
  }

  static Future<Database> openDb() async {
    final dbPath = await getDatabasesPath();
    String path = join(dbPath, "bloc_advance.dart");
    return openDatabase(path, version: 1, onCreate: (db, vers) async {
      await createTable(db);
    });
  }

  static Future<int> createCustomer(Customers customers) async {
    final db = await openDb();
    return await db.insert(CustomersQuery.tableName, customers.toMap());
  }

  static Future<int> signUp(UserModel userModel) async {
    final db = await openDb();
    return await db.insert(UsersQuery.tableName, userModel.toMap());
  }

  static Future<List<CustomerReceive>> getCustomers() async {
    final db = await openDb();
    final result =
        await db.query(CustomersQuery.tableName, orderBy: "customerId");
    return result.map((e) => CustomerReceive.fromMap(e)).toList();
  }

  static Future<int?> login(UserModel userModel) async {
    final db = await openDb();
    List result = await db.query(UsersQuery.tableName,
        limit: 1, where: 'username = ?', whereArgs: [userModel.username]);

    if (result.isNotEmpty && result[0]["password"] == userModel.password) {
      return result[0]["id"];
    } else {
      return null;
    }
  }

  static Future delete(CustomerReceive customer) async {
    final db = await openDb();
    await db.delete(CustomersQuery.tableName,
        where: "customerId=?", whereArgs: [customer.customerId]);
  }
}
