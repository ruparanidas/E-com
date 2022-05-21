import 'package:day33/model_access.dart';
import 'package:day33/model_product.dart';
import 'package:day33/pro_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Container(
            //margin: EdgeInsets.only(left: 20),
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
              iconSize: 30,
              color: Colors.grey[600],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 2, color: Color.fromARGB(255, 122, 122, 126))),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                iconSize: 30,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "HI-Fi shop & Service",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text('Audio shop on Rustavelu Ave 57.'),
              SizedBox(
                height: 10,
              ),
              Text('This shop offers both products and services.'),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 1,
                child: Row(children: [
                  Text('Products',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    width: 5,
                  ),
                  Text('41',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 22,
                          fontWeight: FontWeight.w400)),
                  Spacer(),
                  Text('Show all',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    //height: 400,
                    color: Colors.grey[300],
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: myProductList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ProductDetails(
                                        name: myProductList[index].name,
                                        description:
                                            myProductList[index].description,
                                        price: myProductList[index].price,
                                        img: myProductList[index].img,
                                      )));
                            },
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Container(
                                  //height: 300,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.network(
                                          '${myProductList[index].img}',
                                          height: 150,
                                          width: 170,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                            '${myProductList[index].description}'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('${myProductList[index].name}'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('\$${myProductList[index].price}'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  )),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 1,
                child: Row(children: [
                  Text('Accessories',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                  Text('19',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 22,
                          fontWeight: FontWeight.w400)),
                  Spacer(),
                  Text('Show all',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.grey[300],
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: myAccessList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ProductDetails(
                                        name: myAccessList[index].name,
                                        description:
                                            myAccessList[index].description,
                                        price: myAccessList[index].price,
                                        img: myAccessList[index].img,
                                      )));
                            },
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Container(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Card(
                                          child: Image.network(
                                            '${myAccessList[index].img}',
                                            height: 150,
                                            width: 170,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                            '${myAccessList[index].description}'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('${myAccessList[index].name}'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('\$${myAccessList[index].price}'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
