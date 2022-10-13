import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List<Documents> docs;
  void fetchDocument(){
    final doc= rootBundle.loadString('assets/Modal.json');
  var docs=
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        flexibleSpace: Container(
          decoration: BoxDecoration(
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
                  "Tuesday, August 2,2022",
                  style: GoogleFonts.poppins(
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
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                Text(
                  "Welcome to your vidvici workspace",
                  style: GoogleFonts.poppins(
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
                // suffixIcon: Icon(Icons.close,
                // size: 10,
                // color: Color(0xFF1E232C),),

                //  itemColor: Colors.white.withOpacity(0.1),
                backgroundColor: Colors.white,
                placeholder: "Start Typing to Search",
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text("Recent Notes",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color(0xFF1E232C),
                        fontWeight: FontWeight.w600)),
                Spacer(),
                Text(
                  "View all",
                  style: TextStyle(
                    color: Color(0xFF0171A9),
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded,
                    size: 12, color: Color(0xFF0171A9))
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: MediaQuery.of(context).size.height*.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xFF000000).withOpacity(0.2))),
                    height: 100,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 16,
                            
                            ),
                            child: Text("Title of note goes here", style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xFF004466)
                            )),
                          ),
                          Text("Taskspace : research paper ", style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 8,
                            color: Color(0xFF1E232C)
                          
                          )),
                          Text(
                              "Fired Amazon worker leads protest outside jeff Bezos 16M NYC apertment. Lorem ipsum sith dolors minim ninad",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color(0xFF1E232C).withOpacity(0.6)
                              
                              )),
                              SizedBox(height: 8,),
                          Text("Viewed  2 days ago", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            color: Color(0xFF1E232C).withOpacity(0.3)

                          ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Text("Recent Notes", style: TextStyle()),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("links", style: TextStyle()),
              Text("Documents", style: TextStyle())
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //image
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Document Name.pdf", style: TextStyle()),
                            Text("TaskSpace research paper",
                                style: TextStyle()),
                            Text("viewed 2 days ago", style: TextStyle())
                          ],
                        ),
                        Icon(Icons.arrow_right)
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

