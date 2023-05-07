import 'package:animated_navbar_tabs/vc_constants.dart';
import 'package:flutter/material.dart';
import 'components/vc_chat_screen.dart';
import 'components/vc_story_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VCHome extends StatefulWidget {
  const VCHome({super.key});

  @override
  State<VCHome> createState() => _VCHomeState();
}

class _VCHomeState extends State<VCHome> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Viraza - Chat'),
        backgroundColor: mainColor,
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_horiz), onPressed: () {}),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            const VCStoryScreen(),
            const VChatScreen(),
          ],
        ),
      ),
      floatingActionButton: ClipRRect(
          borderRadius: BorderRadius.all(containerRadius),
          child: Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.height / 18,
            color: mainColor,
            child: TabBar(tabs: [
              Tab(
                child: Icon(FontAwesomeIcons.solidComment, size: 20),
              ),
              Tab(
                child: Icon(FontAwesomeIcons.userPlus, size: 20),
              ),
              Tab(
                child: Icon(FontAwesomeIcons.video, size: 20),
              ),
              Tab(
                child: Icon(FontAwesomeIcons.phoneAlt, size: 20),
              )
            ], controller: _tabController),
          )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
