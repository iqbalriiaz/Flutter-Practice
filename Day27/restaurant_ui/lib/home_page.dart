import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Image> images = [
  Image.asset("images/img1.png"),
  Image.asset("images/img2.png"),
  Image.asset("images/img3.png"),
  Image.asset("images/img4.png"),
  Image.asset("images/img5.png"),
];

final List<String> productName = [
  "Burger",
  "French Fries",
  "Pasta",
  "Chicken Wings",
  "Chicken with Vegis",
];

final List<String> productRating = [
  "4.5",
  "5",
  "2.2",
  "3.6",
  "4.8",
];

final List<String> distance = [
  "400m",
  "500m",
  "200m",
  "300m",
  "700m",
];

final List<int> product_prices = [4, 2, 3, 7, 10];

class _HomePageState extends State<HomePage> {
  final List<int> quantity = [1, 1, 1, 1, 1];
  int selectedListItem = -1;

  int final_quantity = 1;

  int total_price = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 223, 219, 219),
        appBar: AppBar(leading: Icon(Icons.arrow_back), title: Text("My Cart")),
        body: Column(
          children: [
            Expanded(
              flex: 6,
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 5,
                  );
                },
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      height: 180,
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                height: 80,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: images[index].image,
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex: 6,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${productName[index]}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Text(
                                                "${productRating[index]}",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                  height: 20,
                                                  width: 30,
                                                  child: Image.asset(
                                                      "images/map.png")),
                                              Text(
                                                "${distance[index]}",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$"
                                          "${product_prices[index]}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            selectedListItem = index;
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                            ),
                                            child: IconButton(
                                                onPressed: () {
                                                  setState(() {});
                                                },
                                                icon: Icon(
                                                  Icons.remove,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "${quantity[index]}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedListItem = index;
                                              print(selectedListItem);
                                            });
                                          },
                                          child: GestureDetector(
                                            onTap: () {
                                              selectedListItem == index;
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                              ),
                                              child: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      final_quantity =
                                                          quantity[index]++;
                                                    });
                                                  },
                                                  icon: Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery---------------------------",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$10 ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Order-----------------------",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$"
                            "${total_price}",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
