import 'package:flutter/material.dart';
import 'Second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.white,
        title: Text("Beeline", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),),
        actions: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(Icons.phone, color: Colors.yellow,),
          ),
          SizedBox(width: 15,),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(Icons.camera_alt_outlined, color: Colors.yellow,),
          ),
          SizedBox(width: 15,),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(Icons.send_sharp, color: Colors.yellow,),
          ),
          SizedBox(width: 15,),
        ],
      ),
      floatingActionButton:
      FloatingActionButton(
        onPressed: (){},
        shape: StadiumBorder(),
        child: Icon(Icons.home_outlined),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.headphones)),
            IconButton(onPressed: (){}, icon: Icon(Icons.monetization_on_outlined)),
            IconButton(onPressed: (){}, icon: Icon(Icons.person)),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.yellow,
              child: ListView(
                scrollDirection: Axis.horizontal,

                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/imagies/img.png"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/imagies/img.png"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/imagies/img.png"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/imagies/img.png"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/imagies/img.png"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/imagies/img.png"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
                child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  children: [
                    GestureDetector(onTap: (){
                    },child: beeline_card(text: "Internet", icon: Icons.wifi_find_outlined)),
                    GestureDetector(onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> const SecondPage() )
                      );
                    },child: beeline_card(text: "Tariflar", icon: Icons.now_wallpaper_outlined)),
                    GestureDetector(onTap: (){},child: beeline_card(text: "Daqiqa paketlar", icon: Icons.lock_clock)),
                    GestureDetector(onTap: (){},child: beeline_card(text: "aksiya va yangiliklar", icon: Icons.newspaper)),
                    GestureDetector(onTap: (){},child: beeline_card(text: "SMS oaketlar", icon: Icons.message_outlined)),
                    GestureDetector(onTap: (){},child: beeline_card(text: "USSD kodlar", icon: Icons.numbers)),
                  ],)
            ),
          ),
          Expanded(
              child:Container(
                child: ElevatedButton(onPressed: (){}, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.restart_alt),
                    Text("Restart xizmati", textAlign: TextAlign.center,),
                  ],
                )),
              ) )
        ],
      ),
    );
  }
}

class beeline_card extends StatelessWidget {
  String text;
  IconData icon;

  beeline_card({
    required this.text,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      shadowColor: Colors.yellow,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 35,),
            Text(text, style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}
