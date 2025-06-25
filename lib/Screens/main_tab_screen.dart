import 'package:flutter/material.dart';

import 'Contacts/contacts.dart';
import 'Profile/profile.dart';
import 'Tickets/tickets.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with TickerProviderStateMixin {
  int selectTab = 0;
  TabController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      if (mounted) {
        setState(() {});
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: controller, children: [
        TicketsPage(),
        ContactsPage(),
        ProfilePage(),

      ]),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          child: TabBar(
              controller: controller,
              indicatorWeight: 0.01,
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
              unselectedLabelStyle: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w700),
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Tab(
                    child: Text("Ticketa",style: TextStyle(fontSize: 12),),
                    icon: Container(
                      height: 27,
                      width: 60,
                        decoration: BoxDecoration(
                          color: selectTab == 0 ? Colors.blue[100] : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),

                      child: Icon(Icons.confirmation_num_rounded,
                        size: 25,
                        color: selectTab == 0 ?Colors.blue : Colors.black,
                      )
                    ),
                  ),
                ),
                Tab(
                  child: Text("Contacts",style: TextStyle(fontSize: 12),),
                  icon: Container(
                      height: 27,
                      width: 60,
                      decoration: BoxDecoration(
                        color: selectTab == 1 ? Colors.blue[100] : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Icon(Icons.group_outlined,
                        size: 25,
                        color: selectTab == 1 ?Colors.blue : Colors.black,
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Tab(
                    child: Text("Profile",style: TextStyle(fontSize: 12),),
                    icon: Container(
                        height: 27,
                        width: 60,
                        decoration: BoxDecoration(
                          color: selectTab == 2 ? Colors.blue[100] : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: Icon(Icons.person_outline,
                          size: 25,
                          color: selectTab == 2 ?Colors.blue : Colors.black,
                        )
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}