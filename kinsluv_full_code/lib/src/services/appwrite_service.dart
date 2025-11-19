import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as models;
import '../../config.dart';

class AppwriteService {
  static Client client = Client();
  static late Account account;
  static late Databases databases;

  static void init() {
    client
        .setEndpoint(APPWRITE_ENDPOINT) // Your Appwrite Endpoint
        .setProject(APPWRITE_PROJECT_ID);
    account = Account(client);
    databases = Databases(client);
  }

  // Example: create an anonymous session (or implement email/password)
  static Future<models.User?> getAccount() async {
    try {
      final user = await account.get();
      return user;
    } catch (e) {
      return null;
    }
  }

  // Example: create a document in database
  static Future<Document?> createLiveStream(String databaseId, String collectionId, Map<String, dynamic> data) async {
    try {
      final doc = await databases.createDocument(
        databaseId: databaseId,
        collectionId: collectionId,
        documentId: 'unique()',
        data: data,
      );
      return doc;
    } catch (e) {
      print('createLiveStream err: \$e');
      return null;
    }
  }
}

// Note: Document alias because appwrite versioning may differ
typedef Document = models.Document;
