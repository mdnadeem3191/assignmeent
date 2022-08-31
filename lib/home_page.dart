import 'package:assigment/top_bar_pages/inventorey.dart';
import 'package:assigment/top_bar_pages/online_store.dart';
import 'package:assigment/top_bar_pages/sales.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xff004cc4),
            onPressed: () {},
            child: const Icon(Icons.add)),
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          backgroundColor: const Color(0xff004cc4),
          title: const Text("Billed"),
          centerTitle: true,
          bottom: const TabBar(
              indicatorColor: Colors.white,
              indicator: UnderlineTabIndicator(
                insets: EdgeInsets.symmetric(horizontal: 50.0),
              ),
              tabs: [
                Tab(
                  text: "Online Store",
                  icon: Icon(Icons.store),
                ),
                Tab(
                    text: "Sales",
                    icon: Icon(
                      Icons.file_copy,
                    )),
                Tab(
                  text: "Inventory",
                  icon: Icon(Icons.shopping_cart),
                )
              ]),
        ),
        body: TabBarView(
            children: [const OnlineStore(), Sales(), const InventoryPage()]),
      ),
    );
  }
}
