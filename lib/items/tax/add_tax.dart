import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/home/drawer.dart';
import 'package:pos/user/edit_profile.dart';
enum MenuItem{
  item1,
  item2,
}
class Add_Tax extends StatefulWidget {
  @override
  State<Add_Tax> createState() => _Add_TaxState();
}
class _Add_TaxState extends State<Add_Tax> {
  List<String> amount =['Amount','Percentage'];
  String selected = '';
  var setvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "New Tax",
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
            new Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 30),
                    child: Text("Add New Tax",style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,),
                    child: Text("Lable",style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 16
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Lable',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,),
                    child: Text("Amount",style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 16
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Amount',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,bottom: 20),
                    child: Text("Tax",style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 16
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14,right: 14),
                    child: Column(
                      children: <Widget>[

                        Container(
                          width: 329,
                          height: 60,
                          padding: EdgeInsets.only(left: 16,right: 16),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey,width: 1),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: DropdownButton(
                            hint: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'Amount',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            isExpanded: true,
                            underline: SizedBox(),
                            iconSize: 40.0,
                            value: setvalue,
                            onChanged: (newValue) {
                              setState(() {
                                setvalue = newValue;
                              });
                            },
                            items: amount.map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          selected,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.teal[700],
                          ),
                        ),
                      ],
                    ),
                  ),


                  SizedBox(height: 20,),
                  // ignore: deprecated_member_use
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 20),
                    child: Container(
                      height: 45.0,
                      width: 320.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue

                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Add',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
