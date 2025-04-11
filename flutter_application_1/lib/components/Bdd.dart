import 'package:mysql1/mysql1.dart';

class Database {
  MySqlConnection? _connection;

  // Connexion à la base de données
  Future<MySqlConnection?> connect() async {
    try {
      final settings = ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'root',
        password: '',
        db: 'bubu',
      );

      _connection = await MySqlConnection.connect(settings);
      print('✅ Connecté à la base de données.');
      return _connection;
    } catch (e) {
      print('❌ Erreur de connexion : $e');
      return null;
    }
  }

  // Déconnexion de la base de données
  Future<void> disconnect() async {
    if (_connection != null) {
      await _connection!.close();
      print('🔌 Déconnecté de la base de données.');
      _connection = null;
    }
  }
}
