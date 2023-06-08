import 'package:apna_mart/Components/Card/card2.dart';
import 'package:apna_mart/Components/Card/card3.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class listOfNearby extends StatefulWidget {
  final String loaction;
  const listOfNearby({super.key, this.loaction = ""});

  @override
  State<listOfNearby> createState() => _listOfNearbyState();
}

class _listOfNearbyState extends State<listOfNearby> {
  bool isLoaded = false;
  List<dynamic> martList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMartList();
  }

  getMartList() async {
    var response = await api.get(api.getMart + widget.loaction);
    print(response);
    if (response != null) {
      setState(() {
        martList = response["marts"];
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => ProductCard3(
          title: martList[index]["name"],
          subTitle: martList[index]["address"]["Location"],
          image: martList[index]["profilePicture"],
          isButton: true,
          button: "Loaction",
          // onTap: 
          ),
          
      itemCount: martList.length,
      shrinkWrap: true,
    );
  }
}
