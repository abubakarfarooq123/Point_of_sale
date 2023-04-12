import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos/home/home_screen.dart';
import 'package:pos/items/brand/brand.dart';
import 'package:pos/items/category.dart';
import 'package:pos/items/discount/discount.dart';
import 'package:pos/items/units/units.dart';
import 'package:pos/purchase/purchase.dart';
import 'package:pos/staff/customer.dart';
import 'package:pos/staff/employee.dart';
import 'package:pos/staff/suppliers.dart';
import 'package:pos/items/product/product.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: Text("Dashboard", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(FontAwesomeIcons.dashboard),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                },
              ),
              ExpansionTile(
                title: Text(
                  "Staff",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                ),
                leading: Icon(Icons.supervised_user_circle_rounded, size: 28,),
                children: [
                  ListTile(
                    title: Text("Employees", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(FontAwesomeIcons.users),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Employee()));
                    },
                  ),
                  ListTile(
                    title: Text("Roles", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(Icons.work_outline),

                    onTap: () {},
                  ),
                ],
              ),
              ListTile(
                title: Text("Customer", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(FontAwesomeIcons.user),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Customer()));

                },
              ),
              ExpansionTile(
                title: Text(
                  "Items",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                ),
                leading: Icon(FontAwesomeIcons.shop),
                children: [
                  ListTile(
                    title: Text("Products", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(FontAwesomeIcons.cube),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Product()));
                    },
                  ),
                  ListTile(
                    title: Text("Categories", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(Icons.category),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Category_name()));


                    },
                  ),
                  ListTile(
                    title: Text("Brands", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(FontAwesomeIcons.brandsFontAwesome),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Brand()));
                    },
                  ),
                  ListTile(
                    title: Text("Discounts", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(FontAwesomeIcons.percentage),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Discount()));
                    },
                  ),
                  ListTile(
                    title: Text("Unit", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(Icons.ad_units_outlined),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Units()));

                    },
                  ),
                ],
              ),
              ListTile(
                title: Text("Suppliers", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(FontAwesomeIcons.handshake),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Suppliers()));
                },
              ),
              ListTile(
                title: Text("Purchases", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(FontAwesomeIcons.calculator),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Purchase()));

                },
              ),
              ExpansionTile(
                title: Text(
                  "Sales",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                ),
                leading: Icon(Icons.point_of_sale_sharp, size: 28,),
                children: [
                  ListTile(
                    title: Text("Sales", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(FontAwesomeIcons.cartShopping),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Quotations", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(Icons.format_quote_outlined),

                    onTap: () {},
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Returns",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                ),
                leading: Icon(Icons.assignment_return_outlined, size: 28,),
                children: [
                  ListTile(
                    title: Text("Sales Return", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(Icons.compare_arrows_outlined),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Purchase Return", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(Icons.compare_arrows_outlined),
                    onTap: () {},
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Expenses",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                ),
                leading: Icon(Icons.attach_money_outlined, size: 28,),
                children: [
                  ListTile(
                    title: Text("Expenses", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(FontAwesomeIcons.moneyBill),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Categories", style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    ),
                    leading: Icon(Icons.category),
                    onTap: () {},
                  ),
                ],
              ),
              ListTile(
                title: Text("Reports", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(Icons.report),
                onTap: () {},
              ),
              ListTile(
                title: Text("Warehouses", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(Icons.warehouse),
                onTap: () {},
              ),
              ListTile(
                title: Text("Inventory", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(Icons.inventory),
                onTap: () {},
              ),
              ListTile(
                title: Text("Settings", style: GoogleFonts.roboto(
                  color: Colors.black,
                ),
                ),
                leading: Icon(Icons.settings),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}