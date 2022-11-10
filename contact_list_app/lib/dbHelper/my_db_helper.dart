import 'package:contact_list_app/models/contact_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MyDbHelper {
  static const String createTableContact = '''
  create table $tableContact(
  $tableContactColId integer primary key,
  $tableContactColName text,
  $tableContactColPhone text,
  $tableContactAddress text,
  $tableContactDob text,
  $tableContactGender text,
  $tableContactImage text,
  )
  
  ''';

  //creating a database, getting database path, creating a table and it's column
  static Future<Database> openDb() async {
    final path = await getDatabasesPath();
    final dbPath = join(path, "contact.db");

    return openDatabase(dbPath, version: 1, onCreate: (contactDb, version) {
      contactDb.execute(createTableContact);
    });
  }

  //inserting some records
  static Future<int> insertingToContactTable(ContactModel contactModel) async {
    final contactDb = await MyDbHelper.openDb();
    return await contactDb.insert(tableContact, contactModel.toMap());
  }

  //read contact from input
  Future<List<ContactModel>> readContact() async {
    Database contactDb = await MyDbHelper.openDb();
    var contactModel = await contactDb.query(tableContact);
    // return List.generate(
    //     mapList.length, (index) => ContactModel.fromMap(mapList[index]));
    List<ContactModel> contactList  = contactModel.isNotEmpty ?
    contactModel.map((e) => ContactModel.fromMap(e)).toList(): [];
    return contactList;
  }

  static Future<int> updateContact(ContactModel contactModel) async {
    Database contactDb = await MyDbHelper.openDb();

    return await contactDb.update(tableContact, contactModel.toMap(),
        where: 'id =?', whereArgs: [contactModel.id]);
  }
  static Future<int> deleteContact(int id) async {
    Database contactDb = await MyDbHelper.openDb();
    return await  contactDb.delete(tableContact, where: 'id =?', whereArgs: [id]);
  }
}
