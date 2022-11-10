import 'package:contact_list_app/dbHelper/my_db_helper.dart';
import 'package:contact_list_app/models/contact_model.dart';
import 'package:contact_list_app/screens/contact_edit.dart';
import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  int count = 1;

  get snapshot => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
        centerTitle: true,
      ),
      // body: getContactList(),
      body: FutureBuilder(
          future: MyDbHelper().readContact(),
          builder: (BuildContext context,
              AsyncSnapshot<List<ContactModel>> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Text("Loading..."),
                  ],
                ),
              );
            }
            return snapshot.data!.isEmpty
                ? Center(
                    child: Text("No Data Available"),
                  )
                : ListView(
                    children: snapshot.data!
                        .map((e) => Center(
                              child: ListTile(
                                title: Text(e.name),
                                subtitle: Text(e.phone),
                                trailing: IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {},
                                ),
                              ),
                            ))
                        .toList());
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ContactEdit()));
          setState(() {});
        },
        tooltip: "Add Contact",
        child: Icon(Icons.add),
      ),
    );
  }
}
