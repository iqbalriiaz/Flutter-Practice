import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  Map<int, bool> _isAddButtonPressed = {};
  Map<int, bool> _isRemoveButtonPressed = {};


  @override
  void initState()  {
    //getData();
    //getCollection(_collectionRef);
    //fetchDoc();
    fetchFieldValue();
    super.initState();
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  final CollectionReference _collectionRef =
  FirebaseFirestore.instance.collection('Tasks');

  final DocumentReference _documentReference =
  FirebaseFirestore.instance.collection('User').doc();

  final StreamController<List<String>> _controller = StreamController<List<String>>();

  TextEditingController taskNameController = TextEditingController();
  TextEditingController taskDeuDateController = TextEditingController();



  // Future<void> getData() async {
  //   // Get docs from collection reference
  //   QuerySnapshot querySnapshot = await _collectionRef.get();
  //
  //   // Get data from docs and convert map to List
  //   final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
  //
  //   print("data-----${allData}");

  // Future<dynamic> getData() async {
  //
  //   final CollectionReference collectionReference =   FirebaseFirestore.instance.collection("Tasks");
  //
  //   await collectionReference.get().then<dynamic>(( QuerySnapshot snapshot) async{
  //     setState(() {
  //      var data =snapshot.docs;
  //      print(data);
  //     });
  //   });
  // }
  //
  // Future<List<dynamic>?> getCollection(CollectionReference collection) async {
  //   try {
  //     QuerySnapshot snapshot = await collection.get();
  //     List<dynamic> result =  snapshot.docs.map((doc) => doc.data()).toList();
  //     //return result;
  //     print(result);
  //   } catch (error) {
  //     print(error);
  //     return null;
  //   }
  // }


  Future<void> addField() {
    return _collectionRef
        .doc('iqbalriiaz@gmail.com').collection("created").doc()
    //will edit the doc if already available or will create a new doc with this given ID
        .set(
        { 'taskName': "developer",
          'taskDuration': "13 April",}
      // if set to 'false', then only these given fields will be added to that doc
    )
        .then((value) => debugPrint("User Added"))
        .catchError((error) => debugPrint("Failed to add user: $error"));
  }

 // Future fetchDoc() async{
 //  await  _collectionRef.get().then((querySnapshot) {
 //      querySnapshot.docs.map((document) {
 //        print(document.id);
 //        return (document.id);
 //
 //      }).toList();
 //    });
 //
 //  }

  // Future fetchDoc() async {
  //   await _collectionRef.get().then((querySnapshot) {
  //     List<String> data = querySnapshot.docs.map((document) {
  //       return document.id;
  //     }).toList();
  //     _controller.add(data);
  //   });
  // }


  Future<void> fetchFieldValue() async {
    final CollectionReference tasksCollection = FirebaseFirestore.instance.collection('User');
    List<String>? data = [];

    // Get all documents in the "Tasks" collection
    await tasksCollection.get().then((querySnapshot) {
      // Iterate through each document and add the email to the data list
      data = querySnapshot.docs.map((document) {
        Map<String, dynamic> data = document.data() as Map<String, dynamic>;
        return data['email'];
      }).cast<String>().toList();
    });

    // Add the data list to the StreamController
    _controller.add(data!);
  }



  @override
  Widget build(BuildContext context)  {



    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: taskNameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue)),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: taskDeuDateController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue)),
                ),
              ),
            ),
            Expanded(
              child: StreamBuilder(
                stream: _controller.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<String>? data = snapshot.data;
                    return ListView.builder(
                      itemCount: data?.length,
                      itemBuilder: (context, index) {
                        // _isCheckedMap[index] = _isCheckedMap[index] ?? false;
                        _isAddButtonPressed[index] = _isAddButtonPressed[index] ?? true;
                        _isRemoveButtonPressed[index] = _isRemoveButtonPressed[index] ?? true;
                        return SizedBox(
                          height: 80,
                          width: double.infinity,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 5,
                              color: Colors.blueGrey,
                              child: Padding(
                                padding: const EdgeInsets.only(left:8.0,right: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(onPressed: (){},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.grey),
                                        child: const Text("Remove",style: TextStyle(fontSize: 10),)),

                                    Text(data![index],style: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),

                                    ElevatedButton(onPressed:  _isAddButtonPressed[index]! ? (){
                                      print("pressed: ${index}");

                                      setState(() {
                                        _isAddButtonPressed[index] = false;
                                      });
                                      _collectionRef
                                          .doc(data[index]).collection("incoming").doc()
                                          .set(
                                          { 'taskName': "${taskNameController.text}",
                                            'taskDuration': "${taskDeuDateController.text}",}
                                      );
                                    }: null, child: Text("Add")),


                                  ],
                                ),
                              ),
                            ),

                        );
                      },
                    );
                  }
                  return Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ],
        ),
      ),
    )
    ;
  }
}
