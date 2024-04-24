import 'package:cceapp/pages/sample_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blueGrey, Colors.blueGrey.withOpacity(0.2)],
          ),
        ),
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 128.0,
                height: 128.0,
                margin: const EdgeInsets.only(
                  top: 24.0,
                  bottom: 64.0,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Colors.black26,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/timetable.jpeg',
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                leading: const Icon(Icons.home),
                title: const Text('Home'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatPage(),
                    ),
                  );
                },
                leading: const Icon(Icons.account_circle_rounded),
                title: const Text('Chats'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.favorite),
                title: const Text('Downloads'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
              ),
              const Spacer(),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white54,
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                  child: const Text('Terms of Service | Privacy Policy'),
                ),
              ),
            ],
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[300],
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    color: const Color.fromARGB(255, 8, 69, 160),
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
        ),
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Chats",
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 69, 160),
                    fontSize: 70,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Share Answers :)",
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 69, 160),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(Icons.message,
                    size: 40, color: Color.fromARGB(255, 8, 69, 160)),
              ),
              title: const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child:
                    Text("Signal Processing", style: TextStyle(fontSize: 20)),
              ),
              onTap: () {},
              contentPadding: const EdgeInsets.all(10),
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(Icons.message,
                    size: 40, color: Color.fromARGB(255, 8, 69, 160)),
              ),
              title: const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child:
                    Text("Data Structure Algo", style: TextStyle(fontSize: 20)),
              ),
              onTap: () {},
              contentPadding: const EdgeInsets.all(10),
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(Icons.message,
                    size: 40, color: Color.fromARGB(255, 8, 69, 160)),
              ),
              title: const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text("Probability", style: TextStyle(fontSize: 20)),
              ),
              onTap: () {},
              contentPadding: const EdgeInsets.all(10),
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(Icons.message,
                    size: 40, color: Color.fromARGB(255, 8, 69, 160)),
              ),
              title: const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text("ECM", style: TextStyle(fontSize: 20)),
              ),
              onTap: () {},
              contentPadding: const EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
