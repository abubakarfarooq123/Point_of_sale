import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/home/drawer.dart';
import 'package:pos/user/edit_profile.dart';
import 'add_customers.dart';

enum MenuItem{
  item1,
  item2,
}
class Customer extends StatefulWidget {
  const Customer({Key? key}) : super(key: key);

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Customers",
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          PopupMenuButton<MenuItem>(
            onSelected: (value){
              if(value== MenuItem.item1){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Edit_Profile()));
              }
              if(value== MenuItem.item2){
              }
            },
            itemBuilder: (context)=>[
              PopupMenuItem(
                value: MenuItem.item1,
                child: Row(
                  children: [
                    Icon(Icons.edit),
                    SizedBox(width: 10,),
                    Text(
                      "Edit Profile",style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 16
                    ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: MenuItem.item1,
                child: Row(
                  children: [
                    Icon(Icons.login_outlined),
                    SizedBox(width: 10,),
                    Text(
                      "Logout",style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 16
                    ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14,top: 20,bottom: 14),
                  child: Container(
                    height: 50,
                    width: 230,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: Colors.black)),
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Colors.grey,
                        ),
                        hintText: "Search...",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,),
                  child: InkWell(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue
                      ),
                      child: Icon(FontAwesomeIcons.filePdf,color: Colors.white,size: 18,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,),
                  child: InkWell(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue
                      ),
                      child: Icon(FontAwesomeIcons.fileCsv,color: Colors.white,size: 18,),
                    ),
                  ),
                ),

              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 50),
                              child: Icon(
                                FontAwesomeIcons.userPlus,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50, left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "4",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      fontSize: 26
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:7,top: 20, right: 10),
                          child: Text(
                            "Active Customers",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 50),
                              child: Icon(
                                FontAwesomeIcons.userMinus,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50, left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "4",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:7,top: 20, right: 10),
                          child: Text(
                            "Delete Customers",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.lime,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 40),
                              child: Icon(
                                FontAwesomeIcons.clock,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40,left: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rs 1123.41",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:2,top: 10),
                          child: Text(
                            "Receivable (Dues)",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.shade400,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 40),
                              child: Icon(
                                FontAwesomeIcons.clock,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40,left: 7),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rs 11333.41",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:2,top: 10),
                          child: Text(
                            "Payable (Dues)",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,top: 8,bottom: 20),
              child: Text('Active Customers',style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 30,
                    headingRowColor: MaterialStateColor.resolveWith((states) {return Colors.blue;},),
                    // border: TableBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    dividerThickness: 3,
                    showBottomBorder: true,
                    columns: [
                      DataColumn(
                        label: Text('Name',style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),
                      ),
                      DataColumn(
                        label: Text('Phone #',style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text('Total Spent',style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                        ),
                      ),
                      DataColumn(
                        label: Text('Receivable',style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                        ),
                      ),
                      DataColumn(
                        label: Text('Payable',style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                        ),
                      ),
                      DataColumn(
                        label:Text(""),
                      ),
                    ],
                    rows: [

                      DataRow(cells: [
                        DataCell(Text('Jawad')),
                        DataCell(Text('+923128814234')),
                        DataCell(Text('3823838')),
                        DataCell(Text('12213823838')),
                        DataCell(Text('12213823838')),
                        DataCell( Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.edit),color: Colors.blue,),
                            SizedBox(
                              width: 5,
                            ),
                            IconButton(onPressed: (){}, icon: Icon(Icons.delete),color: Colors.blue,),
                          ],
                        ),),

                      ]),
                      DataRow(cells: [
                        DataCell(Text('Fahad')),
                        DataCell(Text('+923127272272')),
                        DataCell(Text('12213823838')),
                        DataCell(Text('12213823838')),
                        DataCell(Text('12213823838')),
                        DataCell( Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.edit),color: Colors.blue,),
                            SizedBox(
                              width: 5,
                            ),
                            IconButton(onPressed: (){}, icon: Icon(Icons.delete),color: Colors.blue,),
                          ],
                        ),),

                      ]),
                      DataRow(cells: [
                        DataCell(Text('Abubakar')),
                        DataCell(Text('+923142517265')),
                        DataCell(Text('222838232')),
                        DataCell(Text('12213823838')),
                        DataCell(Text('12213823838')),
                        DataCell( Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.edit),color: Colors.blue,),
                            SizedBox(
                              width: 5,
                            ),
                            IconButton(onPressed: (){}, icon: Icon(Icons.delete),color: Colors.blue,),
                          ],
                        ),),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Javed')),
                        DataCell(Text('+923186228288')),
                        DataCell(Text('2323823838')),
                        DataCell(Text('12213823838')),
                        DataCell(Text('12213823838')),
                        DataCell( Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.edit),color: Colors.blue,),
                            SizedBox(
                              width: 5,
                            ),
                            IconButton(onPressed: (){}, icon: Icon(Icons.delete),color: Colors.blue,),
                          ],
                        ),),

                      ]),
                    ]),
      ),
      ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => Add_Customer()));

        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add,color: Colors.white,),
      ),


    );
  }
}
