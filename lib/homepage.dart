import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: 
        // Column(
        //   children: [
            Scrollbar(
              thickness: 5,
              thumbVisibility: true,
              child: SingleChildScrollView(
                // child: Column(
                //   children: [
                    child:ConstrainedBox(
                      constraints: const BoxConstraints(
                        minHeight: 800,
                      ),
                    
                      //height: 700,
                      child: Stack(
                        children: [
                          // Column(
                          //   children: [
                          Container(
                            height: 500,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/img_6.jpg"), // Replace with your image
                                fit: BoxFit.cover,
                              ),
                            ),),
                            Positioned(
                              top: 100,
                              left: 20,
                              right: 20,
                             child:Column(
                              children: [
                               Text(
                                "Your pick of rides at low prices",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),   
                              ],
                            ),
                              ),
                              Positioned(
                                top: 300,
                                left: 20,
                                right: 20,
                                child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(30),
                                    child: Column(
                                      children: [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: "Leaving from",
                                            icon: Icon(Icons.radio_button_checked),
                                            ),),
                                            TextField(
                                              decoration: InputDecoration(
                                                hintText: "Going to",
                                                icon: Icon(Icons.radio_button_checked),
                                                ),),
                                                TextField(
                                                  decoration: InputDecoration(
                                                    hintText: "Today",
                                                    icon: Icon(Icons.date_range),
                                                    ),),                              
                                                    TextField(
                                                      decoration: InputDecoration(
                                                        hintText: "No. of person",
                                                        icon: Icon(Icons.person),
                                                        ),),
                                                        SizedBox(height: 20,),
                                                        ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                                          backgroundColor: Colors.blue,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(8),
                                                            ),
                                                            padding: EdgeInsets.symmetric(vertical: 14,horizontal: 100),
                                                            ),child: Text("Search",style: TextStyle(color: Colors.white,fontSize: 20),),),
                                                            ],),
                                                            ),
                                                        
                                                        ),
                                                        ),
                                                          ],
                                                          ),
              
                                                          
                                                      ),
              ),
            ),

            bottomNavigationBar: BottomNavigationBar(
         selectedItemColor: Colors.blue,
         unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Publish"),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: "Your rides"),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),




           
         
      ),
    );
  }
}