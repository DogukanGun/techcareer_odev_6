import 'package:flutter/material.dart';
import 'package:techcareer_odev_6/user_images.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var flags = ["icons/flags/png/nl.png","icons/flags/png/de.png","icons/flags/png/fr.png","icons/flags/png/us.png"];

  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    return  DefaultTabController(
      length: 2,
      child: Scaffold(
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
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      height: 150,
                      child: ListView.builder(
                          shrinkWrap: false,
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index){
                            if(index>3){
                              return Card(
                                color: Colors.black,
                                child: Column(
                                  children: const [
                                    SizedBox(
                                      height: 100,
                                      child: CircleAvatar(
                                        radius: 40, // Ima
                                        backgroundColor: Colors.grey,// ge radius
                                        child: CircleAvatar(
                                          radius: 38,
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                              Icons.add,
                                              size: 50,
                                              color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }else{
                              return StoryCell(index: index,flagLink: flags[index],);
                            }
                          }),
                    ),
                  ),
                  const TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(text: "",icon: Icon(Icons.grid_on_outlined),),
                      Tab(text: "",icon: Icon(Icons.person_pin_outlined),),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth,
                    height: screenHeight,
                    child: const TabBarView(
                        children: [UserImages(),UserImages()]
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){},
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(backgroundColor:Colors.black,icon: Icon(Icons.house_outlined,color: Colors.white,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.slow_motion_video_rounded,color: Colors.white,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,color: Colors.white,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white,),label: ""),
          ],
        ),
      ),
    );
  }
}

class StoryCell extends StatelessWidget {
  int index = 0;
  String flagLink;
  StoryCell({required this.index,required this.flagLink});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: CircleAvatar(
              radius: 40, // Ima
              backgroundColor: Colors.grey,// ge radius
              child: CircleAvatar(
                radius: 38,
                backgroundImage: AssetImage("image/story_image${index+1}.png"),
              ),
            ),
          ),
          SizedBox(
              width: 20,
              height: 20,
              child: Image.asset(flagLink, package: 'country_icons')
          ),
        ],
      ),
    );
  }
}
