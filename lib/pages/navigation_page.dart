import 'package:conecta/constants/colors.dart';
import 'package:conecta/constants/images.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});

  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController (
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          //title:,
          //centerTitle = true
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
            ),
          ],
          //backgroundColor: tOutlineColor,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [tTopDegrade, tBottomDegrade],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft
              ),
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Image.asset(tOppIcon, width: 35, height: 35,)),
              Tab(icon: Image.asset(tHeartIcon, width: 35, height: 35,)),
              Tab(icon: Image.asset(tProfileIcon, width: 35, height: 35,)),
              Tab(icon: Image.asset(tConectaIcon, width: 35, height: 35,)),
            ],
          ),
          elevation: 4,
        ),
        body: const TabBarView(
          children: [
            MaterialApp(home: Center(child: Text("Feed TBD"))),
            MaterialApp(home: Center(child: Text("Chat TBD"))),
            MaterialApp(home: Center(child: Text("Perfil TBD"))),
            MaterialApp(home: Center(child: Text("Match TBD"))),
          ]
        ),
      ),
    );

    /*return DefaultTabController(length: 4, 
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            //title: const Text("Top Navigation"),
            bottom:  TabBar(
              tabs: [
                Tab(
                  icon: new Image.asset(tOppIcon),
                  text: "Chat",
                ),
                Tab(
                  icon: new Image.asset(tProfileIcon),
                  text: "Match",
                ),
                Tab(
                  icon: new Image.asset(tHeartIcon),
                  text: "Feed",
                ),
                Tab(
                  icon: new Image.asset(tConectaIcon),
                  text: "Pedidos",
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            MaterialApp(home: Center(child: Text("Chat TBD"))),
            MaterialApp(home: Center(child: Text("Match TBD"))),
            MaterialApp(home: Center(child: Text("Feed TBD"))),
            MaterialApp(home: Center(child: Text("Pedidos TBD"))),
            MaterialApp(home: Center(child: Text("Perfil TBD"))),
          ]
        )
      ),
    );*/
  }
}