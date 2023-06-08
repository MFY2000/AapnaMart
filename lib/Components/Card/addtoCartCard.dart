import 'package:apna_mart/Components/Button/counter.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class addtoCartCard extends StatelessWidget {
  final dynamic data;

  const addtoCartCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height * .18,
        margin: EdgeInsets.symmetric(horizontal: Get.width * .005),
        child: Container(
          width: Get.width * .65,
          padding: EdgeInsets.all(Get.width * .01),
          margin: EdgeInsets.all(Get.width * .01),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: CustomTheme().backgroundColor2,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                      width: Get.width * .2,
                      height: Get.height * .15,
                      child: Image.network(api.File_URL + data["image"],
                          fit: BoxFit.cover)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data["name"],
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          data["price"],
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        counter(
                          add: () {},
                          count: data["quantity"],
                          remove: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: Get.width * .2,
                    child: IconButton(
                        onPressed: () {},
                        icon: CircleAvatar(
                            radius: Get.width * .1,
                            backgroundColor: CustomTheme().highlight,
                            child: Icon(Icons.delete))),
                  ),
                  Text(
                    data["price"],
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
