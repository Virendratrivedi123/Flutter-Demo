// ignore_for_file: unnecessary_new, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MaterialApp(
    home: SecondRoute(),
  ));
}

// ignore: camel_case_types
class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _State createState() => _State();
}

class _State extends State<SecondRoute> {
  // final List names = [
  //   'Aby',
  //   'Aish',
  //   'Ayan',
  // ];

  // static final List Arr = [
  //   {
  //     "img":
  //         "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
  //     "name": "ajay"
  //   },
  // ];

  static final List<Person> persons = [];

  @override
  void initState() {
    //adding item to list, you can add using json from network
    persons.add(Person(
        id: "1",
        name: "Hari Prasad Chaudhary",
        img:
            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
        desc:
            "Paris, France's capital, is a major European city and a global center for art, fashion, gastronomy and culture."));
    persons.add(Person(
        id: "2",
        name: "Krishna Karki",
        img:
            "https://image.shutterstock.com/image-photo/surreal-image-african-elephant-wearing-260nw-1365289022.jpg",
        desc:
            "Paris, France's capital, is a major European city and a global center for art, fashion, gastronomy and culture."));
    persons.add(Person(
        id: "3",
        name: "Ujjwal Joshi",
        img:
            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
        desc:
            "Paris, France's capital, is a major European city and a global center for art, fashion, gastronomy and culture."));
    persons.add(Person(
        id: "4",
        name: "Samir Hussain Khan",
        img:
            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
        desc:
            "Paris, France's capital, is a major European city and a global center for art, fashion, gastronomy and culture."));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: const Text('Flutter '),
          toolbarHeight: 0,
        ),
        body: getBody()
        // padding: const EdgeInsets.all(8),
        // itemCount: persons.length,
        // itemBuilder: (BuildContext context, int index) {

        // GridView.count(
        //     crossAxisCount: 1,
        //     controller: new ScrollController(keepScrollOffset: false),
        //     shrinkWrap: true,
        //     scrollDirection: Axis.vertical,
        //     children: List.generate(persons.length, (index) {
        //       return Align(
        //         alignment: Alignment.center,
        //         child: Container(
        //           width: 175,
        //           height: 300,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(8),
        //               border: Border.all(
        //                 color: Colors.black26,
        //                 width: 1,
        //               )),
        //           margin: const EdgeInsets.all(2),
        //           child: Column(children: [
        //             Container(
        //               margin: const EdgeInsets.only(
        //                 top: 10.0,
        //               ),
        //               alignment: Alignment.center,
        //               child: Image.network(
        //                 persons[index].img,
        //                 cacheHeight: 120,
        //                 cacheWidth: 160,
        //                 alignment: Alignment.topCenter,
        //               ),
        //             ),
        //             Container(
        //               margin: const EdgeInsets.only(
        //                 top: 10.0,
        //               ),
        //               alignment: Alignment.center,
        //               child: Text(
        //                 persons[index].name,
        //                 style: const TextStyle(
        //                   fontSize: 15,
        //                   fontWeight: FontWeight.w700,
        //                 ),
        //               ),
        //             ),
        //             // Container(
        //             //   margin: const EdgeInsets.only(
        //             //     top: 10.0,
        //             //   ),
        //             //   alignment: Alignment.center,
        //             //   width: 150,
        //             //   height: 34,
        //             //   child: Text(
        //             //     persons[index].desc,
        //             //     style: const TextStyle(
        //             //       fontSize: 10,
        //             //     ),
        //             //   ),
        //             // ),
        //             // Container(
        //             //     margin: const EdgeInsets.only(top: 10.0, right: 70),
        //             //     child: RatingBar.builder(
        //             //       initialRating: 3,
        //             //       minRating: 1,
        //             //       direction: Axis.horizontal,
        //             //       allowHalfRating: true,
        //             //       itemCount: 5,
        //             //       itemSize: 14.0,
        //             //       itemPadding:
        //             //           const EdgeInsets.symmetric(horizontal: 1.0),
        //             //       itemBuilder: (context, _) => const Icon(
        //             //         Icons.star,
        //             //         color: Colors.amber,
        //             //       ),
        //             //       onRatingUpdate: (rating) {},
        //             //     )),
        //             // new SizedBox(
        //             //   width: 150.0,
        //             //   height: 30.0,
        //             //   child: ElevatedButton(
        //             //     onPressed: () {},
        //             //     child: Row(
        //             //       mainAxisSize: MainAxisSize.min,
        //             //       // ignore: prefer_const_literals_to_create_immutables
        //             //       children: [
        //             //         const Text('Add to iternertry',
        //             //             style: TextStyle(
        //             //               fontSize: 12,
        //             //               fontWeight: FontWeight.w700,
        //             //               color: Colors.white,
        //             //             )), // <-- Text
        //             //         const SizedBox(
        //             //           width: 5,
        //             //         ),
        //             //         const Icon(
        //             //           // <-- Icon

        //             //           Icons.add_rounded,
        //             //           size: 20.0,
        //             //         ),
        //             //       ],
        //             //     ),
        //             //   ),
        //             // ),
        //             // Container(
        //             //   margin: const EdgeInsets.only(top: 3.0, bottom: 3.0),
        //             //   alignment: Alignment.center,
        //             // ),
        //             // new SizedBox(
        //             //   width: 150.0,
        //             //   height: 30.0,
        //             //   child: ElevatedButton(
        //             //     onPressed: () {},
        //             //     child: Row(
        //             //       mainAxisSize: MainAxisSize.min,
        //             //       // ignore: prefer_const_literals_to_create_immutables
        //             //       children: [
        //             //         const Text('create iternertry',
        //             //             style: TextStyle(
        //             //               fontSize: 12,
        //             //               fontWeight: FontWeight.w700,
        //             //               color: Colors.white,
        //             //             )), // <-- Text
        //             //         const SizedBox(
        //             //           width: 5,
        //             //         ),
        //             //       const Icon(
        //             //         // <-- Icon

        //             //         Icons.add_rounded,
        //             //         size: 20.0,
        //             //       ),
        //             //     ],
        //             //   ),
        //             // ),
        //             // )
        //           ]),
        //         ),
        //       );
        //     }))
        );
  }

  Widget getBody() {
    // final screenWidth = MediaQuery.of(context).size.width / 3;
    return Column(children: [
      Container(
        color: const Color(0xFF8aafd9),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 12.0, bottom: 20, left: 4),
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/div.png.jpeg',
                cacheHeight: 80,
                cacheWidth: 120,
                alignment: Alignment.topCenter,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 7.0, bottom: 20, left: 130),
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/ser2.png.jpeg',
                cacheHeight: 60,
                cacheWidth: 50,
                alignment: Alignment.topCenter,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 10.0, bottom: 20, left: 20),
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {}, // Image tapped
                  child: Image.asset(
                    'assets/images/dot.png.jpeg',
                    cacheHeight: 40,
                    cacheWidth: 40,
                    alignment: Alignment.topCenter,
                  ),
                )),
          ],
        ),
      ),
      Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          child: const Text(
            'Paris',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          )),
      Container(
          margin: const EdgeInsets.only(top: 3.0, bottom: 5, left: 10),
          alignment: Alignment.centerLeft,
          child: const Text(
            'If you are lucky enough to lived in paris atleast once in your life your life is going to be more and more beautiful it always stays with you paris is very much famous for its valleysm ',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          )),
      Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.centerRight,
          child: const Text(
            'View More >>',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Colors.lightBlue,
            ),
          )),
      Expanded(
          child: GridView.count(
              crossAxisCount: 1,
              // childAspectRatio: screenWidth / 220.0,
              controller: new ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: List.generate(persons.length, (index) {
                return Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 175,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.black26,
                          width: 1,
                        )),
                    margin: const EdgeInsets.all(2),
                    child: Column(children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10.0,
                        ),
                        alignment: Alignment.center,
                        child: Image.network(
                          persons[index].img,
                          cacheHeight: 120,
                          cacheWidth: 160,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10.0,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          persons[index].name,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10.0,
                        ),
                        alignment: Alignment.center,
                        width: 150,
                        height: 34,
                        child: Text(
                          persons[index].desc,
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 10.0, right: 70),
                          child: RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 14.0,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          )),
                      new SizedBox(
                        width: 150.0,
                        height: 30.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text('Add to iternertry',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  )), // <-- Text
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(
                                // <-- Icon

                                Icons.add_rounded,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 3.0, bottom: 3.0),
                        alignment: Alignment.center,
                      ),
                      new SizedBox(
                        width: 150.0,
                        height: 30.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text('create iternertry',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  )), // <-- Text
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(
                                // <-- Icon

                                Icons.add_rounded,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                  ),
                );
              })))
    ]);
  }
}

class Person {
  //modal class for Person object
  String id, name, img, desc;

  Person(
      {required this.id,
      required this.name,
      required this.img,
      required this.desc});
}
