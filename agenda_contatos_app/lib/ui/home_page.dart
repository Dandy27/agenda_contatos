import 'package:agenda_contatos_app/helpers/contact_helpers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ContactHelper helper = ContactHelper();


  @override
  void initState() {
    super.initState();

    Contact c = Contact();
    c.name = 'Doug';
    c.email = 'Doug@gmail.com';
    c.phone = '34564566';
    c.img = 'imgtest';

    helper.saveContact(c);

    helper.getAllContact().then((list){
      print(list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
