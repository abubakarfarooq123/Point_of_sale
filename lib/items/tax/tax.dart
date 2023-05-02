import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/home/drawer.dart';
import 'package:pos/items/brand/add_brand.dart';
import 'package:pos/items/discount/add_discount.dart';
import 'package:pos/user/edit_profile.dart';

enum MenuItem{
  item1,
  item2,
}

class Tax extends StatefulWidget {
  const Tax({Key? key}) : super(key: key);

  @override
  State<Tax> createState() => _TaxState();
}

class _TaxState extends State<Tax> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Tax",
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

              DataTable(
                  columnSpacing: 31,
                  headingRowColor: MaterialStateColor.resolveWith((states) {return Colors.blue;},),
                  dividerThickness: 3,
                  showBottomBorder: true,
                  columns: [
                    DataColumn(
                      label: Text('Lable',style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                      ),
                    ),
                    DataColumn(
                      label: Text('Amount',style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    ),
                    DataColumn(
                      label: Text('Type',style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    ),
                    DataColumn(label: Text(""),),
                  ],
                  rows: [

                    DataRow(cells: [
                      DataCell(Text('Less'),
                      ),
                      DataCell(Text('10'),


                      ),
                      DataCell(Text('Amount'),
                      ),
                      DataCell( Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.edit),color: Colors.blue,),
                          SizedBox(
                            width: 5,
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.delete),color: Colors.blue,),
                        ],
                      ),),]),
                  ]),
            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => Add_discount()));

        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
