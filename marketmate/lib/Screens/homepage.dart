import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:marketmate/data/dummy_data.dart';
import 'package:marketmate/models/grocey_item.dart';
import 'package:marketmate/widgets/category.dart';
import 'package:marketmate/widgets/grocery_item.dart';
import 'package:marketmate/widgets/meatcategory.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategoryId = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: const Color.fromARGB(255, 244, 67, 54),
                width: double.infinity,
                height: 320,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 250, top: 50),
                      child: Text('Hello Ahamed',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 138),
                      child: Text('Discover\nGrocery and Food',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 25, top: 10),
                      child: Material(
                        elevation: 5.0,
                        shadowColor: const Color.fromARGB(255, 244, 67, 54),
                        borderRadius: BorderRadius.circular(15.0),
                        child: TextFormField(
                          obscureText: true,
                          autofocus: true,
                          decoration: InputDecoration(
                              hintText: 'Find grocery and food',
                              hintStyle: const TextStyle(
                                  fontSize: 16, color: Colors.black45),
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: const Icon(
                                Icons.search,
                              ),
                              suffixIcon: const Material(
                                elevation: 5.0,
                                color: Color.fromARGB(255, 244, 67, 54),
                                shadowColor: Color.fromARGB(255, 244, 67, 54),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0),
                                ),
                                child: Icon(Icons.format_list_bulleted_sharp,
                                    color: Colors.white),
                              ),
                              contentPadding: const EdgeInsets.fromLTRB(
                                  20.0, 10.0, 20.0, 10.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 3.0))),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 260),
            height: 160,
            width: 250,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 246, 138, 130).withOpacity(0.5),
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(450)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 260),
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(70)),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (final ct in availablecategory)
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedCategoryId = ct.id;
                              });
                            },
                            child: CategoryCard(
                              category: ct,
                              isSelected: selectedCategoryId == ct.id,
                            ),
                          )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400, left: 20, right: 20),
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              children: [
                for (final item in demoItems)
                  GroceryItemCardWidget(
                    item: item,
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
