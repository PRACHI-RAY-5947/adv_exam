import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  late final  Database _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'favorites.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE favorites (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        text TEXT,
        author TEXT
      )
    ''');
  }

  Future<void> insertFavorite(Map<String, String> quote) async {
    final db = await database;
    await db.insert('favorites', quote);
  }

  Future<void> deleteFavorite(Map<String, String> quote) async {
    final db = await database;
    await db.delete('favorites', where: 'text = ? AND author = ?', whereArgs: [quote['text'], quote['author']]);
  }

  Future<List<Map<String, dynamic>>> getFavorites() async {
    final db = await database;
    return await db.query('favorites');
  }
}
