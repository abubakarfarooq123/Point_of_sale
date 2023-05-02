import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/home/drawer.dart';
import 'package:pos/items/brand/add_brand.dart';
import 'package:pos/user/edit_profile.dart';

enum MenuItem{
  item1,
  item2,
}

class Brand extends StatefulWidget {
  const Brand({Key? key}) : super(key: key);

  @override
  State<Brand> createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Brand",
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
                  columnSpacing: 11,
                  headingRowColor: MaterialStateColor.resolveWith((states) {return Colors.blue;},),
                  // border: TableBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  dividerThickness: 3,
                  showBottomBorder: true,
                  columns: [
                    DataColumn(
                      label: Text('Title',style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text('No. of Products',style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    ),
                    DataColumn(label: Text(""),),
                  ],
                  rows: [

                    DataRow(cells: [
                      DataCell(Text('Ace'),
                      ),
                      DataCell(Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('3'),
                      ),
                      ),DataCell( Row(
    children: [
    IconButton(onPressed: (){}, icon: Icon(Icons.edit),color: Colors.blue,),
    SizedBox(
    width: 5,
    ),
    IconButton(onPressed: (){}, icon: Icon(Icons.delete),color: Colors.blue,),
    ],
    ),),]),
                    DataRow(cells: [
                      DataCell(Text('Hush Puppies'),
                      ),
                      DataCell(Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('4'),
                      ),
                      ),
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
                      DataCell(Text('Engine'),
                      ),
                      DataCell(Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('7'),
                      ),
                      ),
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
            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Add_brand()));

        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
