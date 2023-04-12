import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/home/drawer.dart';
import 'package:pos/items/create_category.dart';
import 'package:pos/user/edit_profile.dart';

enum MenuItem{
  item1,
  item2,
}

class Category_name extends StatefulWidget {
  const Category_name({Key? key}) : super(key: key);

  @override
  State<Category_name> createState() => _Category_nameState();
}

class _Category_nameState extends State<Category_name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Categories",
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
        child: DataTable(
          columnSpacing:40,
          headingRowColor: MaterialStateColor.resolveWith((states) {return Colors.blue;},),
          // border: TableBorder(
          //   borderRadius: BorderRadius.circular(20),
          // ),
          dividerThickness: 3,
          showBottomBorder: true,
          columns: [
            DataColumn(
              label:  Text('Title',style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),
            DataColumn(
              label: Text('No. of Items',style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            DataColumn(label: Text(""))
          ],
          rows: [

            DataRow(cells: [
              DataCell(Text('Biscuits'),
              ),
              DataCell(Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('3'),
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
              ),),]),
            DataRow(cells: [
              DataCell(Text('Powder'),
              ),
              DataCell(Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('22'),
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
              DataCell(Text('Soda'),
              ),
              DataCell(Padding(
                padding: const EdgeInsets.only(left:30.0),
                child: Text('1'),
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
    ),
    floatingActionButton: FloatingActionButton(
    onPressed: (){
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(
    builder: (context) => Create_category()));

    },
    backgroundColor: Colors.blue,
    child: Icon(Icons.add,color: Colors.white,),
    ),
    );
  }
}
