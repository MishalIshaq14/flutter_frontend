import 'package:flutter/material.dart';

class ListTileview extends StatefulWidget {
  const ListTileview({super.key});

  @override
  State<ListTileview> createState() => _ListTileviewState();
}

class _ListTileviewState extends State<ListTileview> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.cyan,
          title: const Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white),
          ),
          actions: const [
            Icon(
              Icons.camera_alt_outlined,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.search_outlined),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.more_vert),
            SizedBox(
              width: 20,
            ),
          ],
          bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              unselectedLabelColor: Colors.white70,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.people),
                ),
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Updates",
                ),
                Tab(
                  text: "Calls",
                ),
              ]),
        ),
        body: TabBarView(children: [
          const Column(
            children: [Text("_________")],
          ),
          const Column(
            children: [
              Column(
                children: [
                  ListTile(
                    title: Text("Rimsha"),
                    subtitle: Text(
                      "Hey! there i'm using whatsapp...",
                      style: TextStyle(color: Colors.grey),
                    ),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfV2t6oWxJ3NN8dLkGvDdHcQSfsF66fs5oS7pxdJuyWw&s"),
                    ),
                    // Image(image: AssetImage("")),
                    trailing: Text(
                      "9:21 am",
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Status",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 390),
                    child: Icon(Icons.more_vert),
                  ),
                ],
              ),
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfV2t6oWxJ3NN8dLkGvDdHcQSfsF66fs5oS7pxdJuyWw&s"),
                          fit: BoxFit.fill),
                      border: Border.all(
                        color: Colors.teal,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(40)),
                ),
                title: const Text("My Status"),
                subtitle: const Text(
                  "Tap to add status update",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Recent updates",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj1dgmqNwu8jo3ig7VjtSI5nTYIJEpledhi9yJW-npKQ&s"),
                        ),
                        title: Text("Rimsha"),
                        subtitle: Text(
                          "4 minutes ago",
                          style: TextStyle(color: Colors.grey),
                        ),
                      );
                    }),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Center(
                    child: Icon(
                      Icons.link,
                      color: Colors.white,
                    ),
                  ),
                ),
                title: const Text(
                  "Create call link",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "Share a link for your WhatsApp call",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Recent"),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj1dgmqNwu8jo3ig7VjtSI5nTYIJEpledhi9yJW-npKQ&s"),
                      ),
                      title: Text("Rimsha"),
                      subtitle: Text(
                        "Today 12:13 pm",
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Icon(
                        Icons.call,
                        color: Colors.teal,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
