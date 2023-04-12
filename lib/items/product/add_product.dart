import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/home/drawer.dart';
import 'package:pos/user/edit_profile.dart';
enum MenuItem{
  item1,
  item2,
}
class Add_product extends StatefulWidget {
  @override
  State<Add_product> createState() => _Add_productState();
}
class _Add_productState extends State<Add_product> {
  List<String> Brand =['Gull Ahmad','Ace','Engine'];
  String selected = '';
  var setvalue;
  List<String> category =['Biscuit','Washing Powder','Cement'];
  String selected1 = '';
  var setvalue1;
  List<String> unit =['kg','m','g',];
  String selected2 = '';
  var setvalue2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Add Product",
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
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: InkWell(
                        child: Container(
                          child: DottedBorder(
                              color: Colors.black,
                              strokeWidth: 3,
                              dashPattern: [4,4],
                              child: Container(
                          height:160,
                                width:190,
                                child: Center(
                                  child: Image.asset("assets/images/img.png",width: 80,height: 60),
                                ),
                          ),
                        ),
                        ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Item Title',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        icon: Icon(
                          FontAwesomeIcons.shop,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14,right: 14,top: 14),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.brandsFontAwesome,color: Colors.blue,size: 35,),
                              SizedBox(width: 10,),
                              Container(
                                width: 279,
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
                                      'Please choose Brand',
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
                                  items: Brand.map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14,right: 14),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Icon(Icons.category,color: Colors.blue,size: 35,),
                              SizedBox(width: 10,),
                              Container(
                                width: 279,
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
                                      'Please choose Category',
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  iconSize: 40.0,
                                  value: setvalue1,
                                  onChanged: (newValue) {
                                    setState(() {
                                      setvalue1 = newValue;
                                    });
                                  },
                                  items: category.map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            selected1,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.teal[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14,right: 14),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Icon(Icons.ad_units_outlined,color: Colors.blue,size: 35,),
                              SizedBox(width: 10,),
                              Container(
                                width: 279,
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
                                      'Please choose Unit',
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  iconSize: 40.0,
                                  value: setvalue2,
                                  onChanged: (newValue) {
                                    setState(() {
                                      setvalue2 = newValue;
                                    });
                                  },
                                  items: unit.map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            selected2,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.teal[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18,bottom: 18),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'SKU',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        errorStyle: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15.0,
                        ),
                        icon: Icon(
                          FontAwesomeIcons.barcode,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Restoke Alert',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        errorStyle: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15.0,
                        ),
                        icon: Icon(
                          FontAwesomeIcons.box,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Retail Price',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        errorStyle: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15.0,
                        ),
                        icon: Icon(
                          FontAwesomeIcons.moneyBill,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Wholesale Price',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        errorStyle: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15.0,
                        ),
                        icon: Icon(
                          Icons.money,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Purchase Price',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        errorStyle: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15.0,
                        ),
                        icon: Icon(
                          FontAwesomeIcons.moneyBill,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      minLines: 5,
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'Description',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        errorStyle: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15.0,
                        ),
                        icon: Icon(
                          Icons.comment,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                  // ignore: deprecated_member_use
                  Container(
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
