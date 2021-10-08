import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Todo_List extends StatelessWidget {
  const Todo_List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "All Todos",
                style: GoogleFonts.roboto(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Divider(
                color: Colors.white,
              ),
              SizedBox(height: 20),
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                //If you do not set the shrinkWrap property, your ListView will be as big as its parent.
                //If you set it to true, the list will wrap its content and be as big as it children allows it to be
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    leading: Container(
                      height: 25,
                      width: 25,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Todo 1",
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => SimpleDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              title: Row(
                children: [
                  Text(
                    "Add Todo",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              children: [
                Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                )
              ],
            ),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
