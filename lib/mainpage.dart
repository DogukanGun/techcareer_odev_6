import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        titleSpacing: -5,
        title: Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text("dogi.15"),
            ),
          ],
        ),
        leading: const Icon(Icons.lock_outlined),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.white)),
                child: const Icon(Icons.add,size: 20,)
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: SingleChildScrollView(
        child:Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: <Widget>[
                          const CircleAvatar(
                            radius: 70, // Image radius
                            backgroundImage: AssetImage("image/profileImage.png"),
                          ),
                          ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                              child: const Icon(Icons.add),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("17",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            Text("Gönderiler",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("321",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            Text("Takipçi",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("439",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            Text("Takip",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                          Text("Dogukan Ali Gundogan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.white),),
                          Text("\nDEU|CENG",style: TextStyle(fontSize: 10,color: Colors.white),)
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    width: screenWidth,
                    child:
                      TextButton(
                          style:ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(side:const BorderSide(color: Colors.grey),borderRadius: BorderRadius.circular(10.0))
                            ),
                          ),
                          onPressed: (){},
                          child: const Text("Profini Düzenle",style: TextStyle(color: Colors.white),)
                      ),

                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StoryCell extends StatelessWidget {
  const StoryCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
