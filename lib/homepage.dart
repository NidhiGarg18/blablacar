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
                    child:Container(
                      color: Color(0xFF1A1A1A),
                      child: ConstrainedBox(
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
                                      fontSize: 30,
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
                                    //color: Colors.black,
                                    //child: Padding(
                                      //padding: const EdgeInsets.all(10),
                                       decoration: BoxDecoration(
                                       color: Color(0xFF333333), 
                                       borderRadius: BorderRadius.circular(15), // Rounded corners
                                        ),
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(20),
                                           child:  Column(children: [
                                            TextField(
                                            decoration: InputDecoration(
                                              hintText: "Leaving from",
                                              hintStyle: TextStyle(color: Color(0xFF1A1A1A)),       
                                              icon: Icon(Icons.radio_button_checked,color: Color(0xFF1A1A1A),),
                                              ),),
                                              TextField(
                                                decoration: InputDecoration(
                                                  hintText: "Going to",
                                                  hintStyle: TextStyle(color: Color(0xFF1A1A1A)),
                                                  icon: Icon(Icons.radio_button_checked,color: Color(0xFF1A1A1A),),
                                                  ),),
                                                  TextField(
                                                    decoration: InputDecoration(
                                                      hintText: "Today",
                                                      hintStyle: TextStyle(color: Color(0xB3FFFFFF)),
                                                      icon: Icon(Icons.date_range,color: Color(0xFF1A1A1A),),
                                                      ),),                              
                                                      TextField(
                                                        decoration: InputDecoration(
                                                          hintText: "No. of person",
                                                          hintStyle: TextStyle(color: Color(0xB3FFFFFF)),
                                                          icon: Icon(Icons.person,color: Color(0xFF1A1A1A),),
                                                          ),),

                                            ],)
                                          ),
                      
                                          
                                                          // SizedBox(height: 20,),
                                                          Padding(
                                                            padding: const EdgeInsets.all(1),
                                                            child: Container(
                                                              child: SizedBox(
                                                                width: double.infinity,
                                                                child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                                                  backgroundColor: Color(0xFF1E88E5),
                                                                  shape: ContinuousRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(20),
                                                                    ),
                                                                    padding: EdgeInsets.symmetric(vertical: 14,horizontal: 100),
                                                                    ),child: Text("Search",style: TextStyle(color: Colors.white,fontSize: 20),),),
                                                              ),
                                                            ),
                                                          ),
                      
                                      //),
                      
                                                              ],),
                                                             // ),
                                                          
                                                          ),
                                                          ),
                                                            ],
                                                            ),
                                    
                                                            
                                                        ),
                    ),
              ),
            ),

            bottomNavigationBar: BottomNavigationBar(
             
         selectedItemColor: Color(0xFF2196F3),
         unselectedItemColor: Color(0x8A000000),
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