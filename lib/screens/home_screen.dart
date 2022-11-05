import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: (const Text(
            'MoXi WHATSAPP',
            style: TextStyle(
                color: Colors.white70,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )),
          centerTitle: false,
          bottom: const TabBar(tabs: [
            Tab(
              child: Text(
                'Chats',
                style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Tab(
              child: Text(
                'Status',
                style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Tab(
              child: Text(
                'Calls',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    const [
                      PopupMenuItem(
                        value: 1,
                        child: Text('New Group'),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text('Settings'),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text('Web'),
                      ),
                      PopupMenuItem(
                        value: 4,
                        child: Text('Logout'),
                      ),
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        backgroundColor: Colors.cyan,
        body: TabBarView(children: [
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://muhammadosamanoor.ipzoneerp.com/wp-content/uploads/2022/06/1653457445218-1.jpg'),
                  ),
                  title: Text('Osama'),
                  subtitle: Text('Hello!! Kese ho yar..'),
                  trailing: Text('6:00 Pm'),
                );
              }),
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3,
                                  color: Colors.blue,
                                )),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://muhammadosamanoor.ipzoneerp.com/wp-content/uploads/2022/06/1653457445218-1.jpg'),
                            ),
                          ),
                          title: const Text('Osama'),
                          subtitle: const Text('2 minutes ago'),
                        ),
                      ],
                    ),
                  );
                } else {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 3,
                            color: Colors.blue,
                          )),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://muhammadosamanoor.ipzoneerp.com/wp-content/uploads/2022/06/ezgif.com-gif-maker-1-1.gif'),
                      ),
                    ),
                    title: const Text(
                      'Osama',
                    ),
                    subtitle: const Text('2 minutes ago'),
                  );
                }
              }),
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://muhammadosamanoor.ipzoneerp.com/wp-content/uploads/2022/06/1653457445218-1.jpg'),
                  ),
                  title: const Text('Osama'),
                  subtitle: Text(index / 2 == 0
                      ? 'You missed a voice call'
                      : 'Call time is 12:12'),
                  trailing:
                      Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                );
              }),
        ]),
      ),
    );
  }
}
