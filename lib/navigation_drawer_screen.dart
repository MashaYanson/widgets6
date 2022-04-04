import 'package:flutter/material.dart';

class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({Key? key}) : super(key: key);

  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>() ;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle=
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      scaffoldMessengerKey: _messengerKey,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          centerTitle: true,
          title: Text("Home"),
          actions: <Widget>[

            IconButton(
                tooltip: "Notifications" ,
                onPressed: () {},
                icon: const Icon(Icons.add_alert)),
            IconButton(
                tooltip: "Settings" ,
                onPressed: () {},
                icon: const Icon(Icons.settings)),
            IconButton(
                tooltip: "Messages" ,
                onPressed: () {},
                icon: const Icon(Icons.message_rounded)),
            TextButton(
              onPressed: () {},
              child: Text("User Name"),
              style: buttonStyle,
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: const BoxDecoration(
              color: Colors.white10,
          ),
                  child: Container(
                    height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50.0))
                            ),
                            child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Soundcloud_logo.svg/440px-Soundcloud_logo.svg.png"),
                          ),
                          const Divider(),
                          const Text("Navigation"),
                        ],
                      )
                  )
              ),
              ListTile(
                leading: const Icon(Icons.rss_feed_sharp),
                title: const Text("Stream"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.manage_search),
                title: const Text("Search"),
                onTap: () {},
              ),
              const Divider(),
             const Text("Your profile", textAlign: TextAlign.center,),
              const Divider(),

              ListTile(
                leading: const Icon(Icons.add_reaction_outlined),
                title: const Text("Profile"),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text("Redirecting to your profile")));
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text("Redirecting to settings")));
                },
              ),
              ListTile(
                leading: const Icon(Icons.payments),
                title: const Text("Restore subscriptions"),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text("Redirecting to subscription page")));
                },
              ),
              const Divider(),
              const Text("Help center", textAlign: TextAlign.center,),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.people_sharp),
                title: const Text("About us"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.help_outline),
                title: const Text("Contact support"),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text("Opening chat with support")));
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.logout_outlined),
                title: const Text("Log out"),
                onTap: () {},
              ),
            ],
          ),
        ),
        body:
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white24,
                border: Border.all(color: Colors.grey , width: 2),
              ),
              child: Column(
                children: [
                  SizedBox (height: 5),
                  Container(
                    alignment: Alignment.topLeft,
                      child: const Text(" Recently Played", textAlign: TextAlign.left,)
                  ),
                  SizedBox (height: 10),
                  Row(children: const [
                    SizedBox ( width: 20,),
                    Placeholder(
                      fallbackWidth:90,
                      fallbackHeight:90,
                      color:Colors.grey,
                    ),
                    SizedBox ( width: 30,),
                    Placeholder(
                      fallbackWidth:90,
                      fallbackHeight:90,
                      color:Colors.grey,
                    ),
                    SizedBox ( width: 30,),
                    Placeholder(
                      fallbackWidth:90,
                      fallbackHeight:90,
                      color:Colors.grey,
                    ),
                    SizedBox ( width: 30,),
                    Placeholder(
                      fallbackWidth:90,
                      fallbackHeight:90,
                      color:Colors.grey,
                    ),
                  ],
                  ),
                  SizedBox (height: 5),
                  const Divider(
                    height: 20,
                    thickness: 0,
                    indent: 0,
                    endIndent: 0,
                    color: Color.fromRGBO(196, 196, 196, 1),),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(" More of what you like", textAlign: TextAlign.left,)
                  ),
                  SizedBox (height: 10),
                  Row(children: const [
                    SizedBox ( width: 20,),
                    Placeholder(
                      fallbackWidth:90,
                      fallbackHeight:90,
                      color:Colors.grey,
                    ),
                    SizedBox ( width: 30,),
                    Placeholder(
                      fallbackWidth:90,
                      fallbackHeight:90,
                      color:Colors.grey,
                    ),
                    SizedBox ( width: 30,),
                    Placeholder(
                      fallbackWidth:90,
                      fallbackHeight:90,
                      color:Colors.grey,
                    ),
                    SizedBox ( width: 30,),
                    Placeholder(
                      fallbackWidth:90,
                      fallbackHeight:90,
                      color:Colors.grey,
                    ),
              ],
                  ),
              ]),
            ),
      ),
    );
  }
}
