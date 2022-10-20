import 'package:financial_management_app_ui_design/model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 22, 0, 22),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(right: 25),
                title: Text(
                  "\$6890",
                  style: myStyle(22, Colors.black87),
                ),
                subtitle: Text(
                  "June Earning",
                  style: myStyle(14, Colors.black54),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                          "https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg"),
                    ),
                    Text(
                      " :",
                      style: myStyle(20, Colors.black, FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 30, 45, 30),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.withOpacity(0.2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Text(
                        "Week",
                        style: myStyle(16, Colors.black87, FontWeight.w700),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Text(
                        "Month",
                        style: myStyle(16, Colors.black87, FontWeight.w700),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Text(
                        "Year",
                        style: myStyle(16, Colors.black87, FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Upcoming Bills",
                style: myStyle(16, Colors.black54),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color(0xff4B2056),
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  "22 June 2022",
                                  style: myStyle(14, Colors.white30),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                margin: EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xff9A6CA6)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Evernote",
                                          style: myStyle(14, Colors.white38),
                                        ),
                                        Text(
                                          "\$9.50",
                                          style: myStyle(18, Colors.white,
                                              FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons
                                          .keyboard_double_arrow_up_rounded),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 62, 114, 13),
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  "22 June 2022",
                                  style: myStyle(14, Colors.white30),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                margin: EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 192, 241, 147)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Evernote",
                                          style: myStyle(14, Colors.white38),
                                        ),
                                        Text(
                                          "\$9.50",
                                          style: myStyle(18, Colors.white,
                                              FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons
                                          .keyboard_double_arrow_up_rounded),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 241, 192, 86),
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  "22 June 2022",
                                  style: myStyle(14, Colors.white30),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                margin: EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 250, 210, 125)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Evernote",
                                          style: myStyle(14, Colors.white38),
                                        ),
                                        Text(
                                          "\$9.50",
                                          style: myStyle(18, Colors.white,
                                              FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons
                                          .keyboard_double_arrow_up_rounded),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 114, 10, 91),
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  "22 June 2022",
                                  style: myStyle(14, Colors.white30),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                margin: EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 230, 124, 207)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Evernote",
                                          style: myStyle(14, Colors.white38),
                                        ),
                                        Text(
                                          "\$9.50",
                                          style: myStyle(18, Colors.white,
                                              FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons
                                          .keyboard_double_arrow_up_rounded),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 2, 95, 107),
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  "22 June 2022",
                                  style: myStyle(14, Colors.white30),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                margin: EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 145, 224, 235)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Evernote",
                                          style: myStyle(14, Colors.white38),
                                        ),
                                        Text(
                                          "\$9.50",
                                          style: myStyle(18, Colors.white,
                                              FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons
                                          .keyboard_double_arrow_up_rounded),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Week Transections",
                  style: myStyle(16, Colors.black54),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      "${myList[index].title}",
                      style: myStyle(16, Colors.black),
                    ),
                    subtitle: Text(
                      "${myList[index].date}",
                      style: myStyle(16, Colors.black),
                    ),
                    trailing: Text(
                      myList[index].price! > 0
                          ? " +${myList[index].price}"
                          : "${myList[index].price}",
                      style: myStyle(16,
                          myList[index].price! > 0 ? Colors.green : Colors.red),
                    ),
                    leading: Icon(myList[index].price! > 0
                        ? Icons.arrow_upward
                        : Icons.arrow_downward),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

myStyle(double size, Color clr, [FontWeight? fw]) {
  return TextStyle(fontSize: size, color: clr, fontWeight: fw);
}
