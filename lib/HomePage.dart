import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLinks = false;
  var docs;
  List docsList = [];
  Future<void> fetchDocument() async {
    final doc = await rootBundle.loadString('assets/Modal.json');
    docs = json.decode(doc);
    docs = docs['Documents'];
    docsList.add(docs);
    print(docs);
  }

  @override
  void initState() {
    fetchDocument();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF0082C3), Color(0xFF016CA2)])),
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 56,
                ),
                Text(
                  "Tuesday, August 13,2022",
                  style: GoogleFonts.poppins(
                    height: 1.5,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Hi, Siddharth",
                  style: GoogleFonts.poppins(
                      height: 1.5,
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Welcome to your vidvici workspace",
                  style: GoogleFonts.poppins(
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8)),
              height: 40,
              child: CupertinoSearchTextField(
                prefixIcon: Icon(
                  Icons.search,
                  size: 18.71,
                  color: Color(0xFF1E232C).withOpacity(0.4),
                ),
                suffixIcon: const Icon(
                  Icons.close,
                  size: 10,
                  color: Color(0xFF1E232C),
                ),
                itemColor: Colors.white.withOpacity(0.1),
                backgroundColor: Colors.white,
                placeholder: "Start Typing to Search",
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text("Recent Notes",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        height: 1.5,
                        color: Color(0xFF1E232C),
                        fontWeight: FontWeight.w600)),
                Spacer(),
                Text(
                  "View all",
                  style: GoogleFonts.poppins(
                      height: 1.5,
                      decoration: TextDecoration.underline,
                      color: Color(0xFF0171A9),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                Icon(Icons.arrow_forward_ios_rounded,
                    size: 12, color: Color(0xFF0171A9))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white.withOpacity(0.2),
            height: MediaQuery.of(context).size.height * .18,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: index == 0 ? 16 : 0,
                    right: 12,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Color(0xFF000000).withOpacity(0.2))),
                    height: 110,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 16,
                            ),
                            child: Text("Title of note goes here",
                                style: GoogleFonts.poppins(
                                    height: 1.5,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xFF004466))),
                          ),
                          Text("Taskspace : research paper ",
                              style: GoogleFonts.poppins(
                                  height: 1.5,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 8,
                                  color: Color(0xFF1E232C))),
                          Text(
                              "Fired Amazon worker leads protest outside jeff Bezos 16M NYC apertment. Lorem ipsum sith dolors minim ninad",
                              style: GoogleFonts.poppins(
                                  height: 1.5,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Color(0xFF1E232C).withOpacity(0.6))),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Viewed  2 days ago",
                              style: GoogleFonts.poppins(
                                  height: 1.5,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9,
                                  color: Color(0xFF1E232C).withOpacity(0.3))),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 8,
            color: Color(0xFFD9D9D9),
          ),
          SizedBox(
            height: 20,
          ),
          //    Padding(
          //   padding: EdgeInsets.only(left: 16),
          //   child: Text("Recent Digests",
          //       style: GoogleFonts.poppins(
          //           height: 1.5,
          //           color: Color(0xFF1E232C),
          //           fontWeight: FontWeight.w600,
          //           fontSize: 14)),
          // ),
          // SizedBox(
          //   height: 10,
          // ),  Container(
          //   color: Colors.white.withOpacity(0.2),
          //   height: MediaQuery.of(context).size.height * .18,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 3,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Padding(
          //         padding: EdgeInsets.only(
          //           left: index == 0 ? 16 : 0,
          //           right: 12,
          //         ),
          //         child: Container(
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(8),
          //               border: Border.all(
          //                   color: Color(0xFF000000).withOpacity(0.2))),
          //           height: 110,
          //           width: 200,
          //           child: Padding(
          //             padding: const EdgeInsets.only(left: 16),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Padding(
          //                   padding: EdgeInsets.only(
          //                     top: 16,
          //                   ),
          //                   child: Text("Title of note goes here",
          //                       style: GoogleFonts.poppins(
          //                           height: 1.5,
          //                           fontWeight: FontWeight.w600,
          //                           fontSize: 14,
          //                           color: Color(0xFF004466))),
          //                 ),
          //                 Text("Taskspace : research paper ",
          //                     style: GoogleFonts.poppins(
          //                         height: 1.5,
          //                         fontWeight: FontWeight.w500,
          //                         fontSize: 8,
          //                         color: Color(0xFF1E232C))),
          //                 Text(
          //                     "Fired Amazon worker leads protest outside jeff Bezos 16M NYC apertment. Lorem ipsum sith dolors minim ninad",
          //                     style: GoogleFonts.poppins(
          //                         height: 1.5,
          //                         fontWeight: FontWeight.w400,
          //                         fontSize: 10,
          //                         color: Color(0xFF1E232C).withOpacity(0.6))),
          //                 SizedBox(
          //                   height: 8,
          //                 ),
          //                 Text("Viewed  2 days ago",
          //                     style: GoogleFonts.poppins(
          //                         height: 1.5,
          //                         fontWeight: FontWeight.w400,
          //                         fontSize: 9,
          //                         color: Color(0xFF1E232C).withOpacity(0.3))),
          //               ],
          //             ),
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text("Recent Viewed",
                style: GoogleFonts.poppins(
                    height: 1.5,
                    color: Color(0xFF1E232C),
                    fontWeight: FontWeight.w600,
                    fontSize: 14)),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 30,
            width: 210,
            child: DefaultTabController(
              initialIndex: 1,
              length: 2,
              child: TabBar(
                onTap: (index) {
                  index == 0
                      ? setState(() {
                          isLinks = true;
                        })
                      : setState(() {
                          isLinks = false;
                        });
                },
                tabs: [
                  Tab(
                    child: Text("links",
                        style: GoogleFonts.poppins(
                            height: 1.5,
                            color: Color(0xFF1E232C),
                            fontWeight: FontWeight.w500,
                            fontSize: 12)),
                  ),
                  Tab(
                    child: Text("Documents",
                        style: GoogleFonts.poppins(
                            height: 1.5,
                            color: Color(0xFF0174AF),
                            fontWeight: FontWeight.w600,
                            fontSize: 12)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          isLinks
              ? Expanded(
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding:
                            EdgeInsets.only(left: 16, right: 16, bottom: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height * .14,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF000000).withOpacity(0.05)),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color:
                                          Color(0xFF676767).withOpacity(0.05)),
                                  width:
                                      MediaQuery.of(context).size.width * .85,
                                  height: 25,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 3),
                                    child: Row(
                                      children: [
                                        Text(
                                          "WebPage Name",
                                          style: GoogleFonts.poppins(
                                              color: Color(0xFF004466),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              height: 1.5),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xFF0174AF),
                                          size: 12,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "TaskSpace: research paper",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xFF1E232C),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8,
                                      height: 1.5),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "https://www.behance.net/gallery/86688367/App-UIUXhghasb-Design ",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xFF1E232C),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8,
                                      height: 1.5),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "viewed 2 mins ago",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xFF1E232C).withOpacity(0.3),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 9,
                                      height: 1.5),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      var details = docs[index];

                      return Padding(
                        padding: const EdgeInsets.only(
                            bottom: 8, left: 16, right: 16),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: Color(0xFF000000).withOpacity(0.05))),
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .8,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //image
                                Container(
                                    height: 46,
                                    width: 46,
                                    child: Image.asset(details['image'])),
                                const SizedBox(
                                  width: 4,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(details['name'],
                                        style: GoogleFonts.poppins(
                                            height: 1.5,
                                            color: Color(0xFF004466),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12)),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(details['description'],
                                        style: GoogleFonts.poppins(
                                            height: 1.5,
                                            color: Color(0xFF1E232c),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 8)),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(details['Time'],
                                        style: GoogleFonts.poppins(
                                            height: 1.5,
                                            color: Color(0xFF1E232C)
                                                .withOpacity(0.38),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8))
                                  ],
                                ),
                                Spacer(),
                                const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color(0xFF0174AF),
                                  size: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: Color(0xFF017DBC),
        ),
        height: 40,
        width: 120,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add,
              color: Colors.white,
              size: 17,),
              Text(
                "New Note",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
