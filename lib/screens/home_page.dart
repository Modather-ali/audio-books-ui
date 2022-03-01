import 'package:flutter/material.dart';
import '../screens/widgets/the_library.dart';
import '../app_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("Explore", style: appTheme().textTheme.bodyText1),
        actions: [
          IconButton(
            onPressed: () {},
            icon:
                const Icon(Icons.shopping_basket_outlined, color: Colors.black),
          )
        ],
      ),
      body: Column(
        children: [
          _searchBar(),
          TabBar(
            controller: _tabController,
            labelStyle: appTheme().textTheme.bodyText2,
            labelColor: const Color(0xFFe85d04),
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 0.01,
            isScrollable: true,
            tabs: const [
              Tab(child: Text("BUSINESS")),
              Tab(child: Text("DESIGN")),
              Tab(child: Text("BESTSELLERS")),
              Tab(child: Text("SCIENCES")),
              Tab(child: Text("COOKING")),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.721,
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(),
                Container(),
                const TheLibrary(),
                Container(),
                Container(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _searchBar() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(4, 6),
            ),
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(-4, -6),
            ),
          ],
        ),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            Text(
              "Search",
              style: appTheme().textTheme.bodyText2,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_voice,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
