import 'package:flutter/material.dart';

class UserImages extends StatefulWidget {
  const UserImages({Key? key}) : super(key: key);

  @override
  State<UserImages> createState() => _UserImagesState();
}

class _UserImagesState extends State<UserImages> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
            childAspectRatio: 3 / 2.5
        ),
        itemBuilder: (context,index){
          return Card(
            color: Colors.black,
            child: Image.asset("image/post_${index+1}.png",width: 100,height: 100,),
          );
        }
    );
  }
}
