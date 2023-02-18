import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title:const Text('Whatsapp'),
            actions: [
             const Icon(Icons.search),
             const SizedBox(width: 10),
             PopupMenuButton(
               icon:const Icon(Icons.more_vert_outlined),
                 itemBuilder: (context) => const [
                    PopupMenuItem(
                     value: '1',
                       child: Text('New Group')
                   ),
                    PopupMenuItem(
                       value: '2',
                       child: Text('Setting')
                   ),
                    PopupMenuItem(
                       value: '3',
                       child: Text('LogOut')
                   )
                 ]
             ),
              const SizedBox(width: 10,)
            ],
            bottom:const TabBar(
                tabs: [
                  Tab(
                    child:  Icon(Icons.camera_alt) ,
                  ),

                  Tab(
                    child: Text('Chats'),
                  ),
                  Tab(
                    child: Text('Status'),
                  ),
                  Tab(
                    child: Text('Calls'),
                  ),
                  Tab(
                    child: Text('Setting'),
                  ),
                ]
            ),
          ),
          body: TabBarView(
              children: [
                Text('Camera'),
                ListView.builder(
                  itemCount: 10,
                    itemBuilder: (context , index){
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1fmtO1xNV_yphS6OAtcQuuDzupas7MMZotNVJuyvYIoISmh8L827nvt7anM_ZHsKr8EM&usqp=CAU'),
                        ),
                        title: Text('Muhammad Ibrar'),
                        subtitle: Text('Hello Guys'),
                        trailing: Text('10:30 PM'),
                      );

                    }
                ),

                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context , index){
                      if (index == 1)
                        {
                          return  Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('News Updates'),
                                ListTile(
                                  leading: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.red,
                                        width: 2,
                                      ),
                                    ),
                                    child:const CircleAvatar(
                                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1fmtO1xNV_yphS6OAtcQuuDzupas7MMZotNVJuyvYIoISmh8L827nvt7anM_ZHsKr8EM&usqp=CAU'),
                                    ),
                                  ),
                                  title:const Text('Muhammad Ibrar'),
                                  subtitle:const Text('35 min ago'),
                                ),
                              ],
                            ),
                          );
                        }
                      else {
                        return  ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            child:const CircleAvatar(
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1fmtO1xNV_yphS6OAtcQuuDzupas7MMZotNVJuyvYIoISmh8L827nvt7anM_ZHsKr8EM&usqp=CAU'),
                            ),
                          ),
                          title:const Text('Muhammad Ibrar'),
                          subtitle:const Text('35 min ago'),
                        );
                      }


                    }
                ),
                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context , index){
                      return  ListTile(
                        leading:const CircleAvatar(
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1fmtO1xNV_yphS6OAtcQuuDzupas7MMZotNVJuyvYIoISmh8L827nvt7anM_ZHsKr8EM&usqp=CAU'),
                        ),
                        title:const Text('Muhammad Ibrar'),
                        subtitle: Text(index/3 == 0 ? 'You missed voice call' : 'You missed video call'),
                        trailing: Icon(index /3 == 0 ? Icons.phone : Icons.video_call),
                      );

                    }
                ),
                Text('Setting'),

              ]
          ),
        )
    );
  }
}
