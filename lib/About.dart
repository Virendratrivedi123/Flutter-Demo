// ignore_for_file: library_private_types_in_public_api, file_names, depend_on_referenced_packages, unnecessary_const

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:http/http.dart' as http;

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List users = [];
  bool isLoading = false;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    // ignore: unnecessary_this
    this.fetchUser();
  }

  fetchUser() async {
    setState(() {
      isLoading = true;
    });
    var headers = {
      'auth-key': 'bnk4Q1B0ek4zY1NUbm11Rk5OUDdaWWNKaDJxZ3JxZ1A=',
      'Cookie':
          'PrestaShop-eaa052f4e3ae4c2b62eb3a9506670130=xQWloodhbFHrLaJxGcxTdovDdJGgAC4LYTbZ55a2wvTvAZESS%2F%2F6IrsqbJb7Kp5hHvSWTDFRzXF6d8YQhBM7oaeF7vH4HaJwiwidCoBtoF0%3D000079'
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://www.divento.com/vsapi/category'));
    request.fields.addAll({
      'lang': 'en',
      'method': 'getVProducts',
      'limit': '10',
      'offset': '0',
      'id_parent': '1543',
      'currency': 'EUR'
    });
    request.headers.addAll(headers);
// http.StreamedResponse response = await request.send();

    http.StreamedResponse response = await request.send();
    var res = await http.Response.fromStream(response);
    // var url = "https://randomuser.me/api/?results=50";
    // var response = await http.get(Uri.parse(url));
    // print(response.body);
    if (response.statusCode == 200) {
      var items = json.decode(res.body)['data']['results'];
      setState(() {
        users = items;
        isLoading = false;
      });
    } else {
      users = [];
      isLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: const Text(""),
          toolbarHeight: 0,
        ),
        body:
            //  Column(children: [
            //   Container(
            //     margin: const EdgeInsets.only(
            //       top: 10.0,
            //     ),
            //     alignment: Alignment.center,
            //     width: 130,
            //     height: 15,
            //     child: const Text(
            //       'name',
            //       style: TextStyle(
            //         fontSize: 13,
            //         fontWeight: FontWeight.w700,
            //       ),
            //     ),
            //   ),
            //   getBody()
            // ])
            getBody());
  }

  Widget getBody() {
    final screenWidth = MediaQuery.of(context).size.width / 3;
    // ignore: prefer_is_empty
    if (users.contains(null) || users.length < 0 || isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
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
              child: Image.asset(
                'assets/images/dot.png.jpeg',
                cacheHeight: 40,
                cacheWidth: 40,
                alignment: Alignment.topCenter,
              ),
            ),
          ],
        ),
      )

      // Row(
      //   children: [

      //     Container(

      //       margin: const EdgeInsets.only(top: 10.0, bottom: 20, left: 20),
      //       alignment: Alignment.center,
      //       child: Image.asset(
      //         'assets/images/div.png.jpeg',
      //         cacheHeight: 80,
      //         cacheWidth: 120,
      //         alignment: Alignment.topCenter,
      //       ),
      //     ),
      //     Container(
      //       margin: const EdgeInsets.only(top: 7.0, bottom: 20, left: 100),
      //       alignment: Alignment.center,
      //       child: Image.asset(
      //         'assets/images/ser.png.jpeg',
      //         cacheHeight: 60,
      //         cacheWidth: 70,
      //         alignment: Alignment.topCenter,
      //       ),
      //     ),
      //     Container(
      //       margin: const EdgeInsets.only(top: 10.0, bottom: 20, left: 20),
      //       alignment: Alignment.center,
      //       child: Image.asset(
      //         'assets/images/dot.png.jpeg',
      //         cacheHeight: 40,
      //         cacheWidth: 40,
      //         alignment: Alignment.topCenter,
      //       ),
      //     ),
      //   ],
      // ),
      ,
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
      // Container(
      //     padding: const EdgeInsets.all(0),
      //     alignment: Alignment.centerLeft,
      //     width: 200,
      //     height: 34,
      //     child: const Text(
      //       'If you are lucky enough to lived in paris atleast once in your life your life is going to be more and more beautiful it always stays with you paris is very much famous for its valleysm ',
      //       style: TextStyle(
      //         fontSize: 12,
      //         fontWeight: FontWeight.w700,
      //         color: Colors.red,
      //       ),
      //     )),
      Expanded(
          child: GridView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return getCard(users[index]);
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                childAspectRatio: screenWidth / 220.0,
              )))
    ]);
  }

  Widget getCard(item) {
    final screenWidth = MediaQuery.of(context).size.width / 3;
    var name = item['name'];
    var imgurl = item["imgurl"];
    var desc = item["description_short"];
    return GridView.count(
      crossAxisCount: 1,
      childAspectRatio: screenWidth / 220.0,
      // controller: new ScrollController(keepScrollOffset: false),
      // shrinkWrap: true,
      // scrollDirection: Axis.vertical,

      children: [
        Container(
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
                imgurl,
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
              width: 130,
              height: 15,
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 13,
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
                desc,
                style: const TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 10.0, right: 70, bottom: 10),
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 14.0,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                )),
            SizedBox(
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
            SizedBox(
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
      ],
    );
  }
}
