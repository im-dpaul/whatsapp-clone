import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/core/common/widgets/feature_comming_soon_widget.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/features/chat/controller/chats_list_controller.dart';
import 'package:whatsapp_ui/features/chat/view/chats_list_screen.dart';
import 'package:whatsapp_ui/features/home/widgets/chats_tabbar.dart';
import 'package:whatsapp_ui/features/home/widgets/home_appbar.dart';
import 'package:whatsapp_ui/features/status/view/status_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late double width;
  late double tabBarWidth;
  ChatsListController chatsListController = Get.find();
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    tabBarWidth = (width - 50) / 3;
    return Scaffold(
      appBar: const HomeAppBar(),
      body: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: const BoxDecoration(color: AppColors.green02),
              child: TabBar(
                indicatorColor: AppColors.pureWhite,
                indicatorSize: TabBarIndicatorSize.tab,
                isScrollable: true,
                labelPadding: const EdgeInsets.symmetric(horizontal: 0),
                tabs: [
                  const Tab(
                    child: SizedBox(
                      width: 50,
                      child: Icon(Icons.group_outlined),
                    ),
                  ),
                  ChatsTabBar(
                    tabBarWidth: tabBarWidth,
                    unreadChat:
                        chatsListController.chatListDataModel.unreadChat,
                  ),
                  Tab(
                    child: SizedBox(
                        width: tabBarWidth,
                        child: const Center(child: Text("Status"))),
                  ),
                  Tab(
                    child: SizedBox(
                        width: tabBarWidth,
                        child: const Center(child: Text('Calls'))),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  FeatureComingSoonWidget(
                    feature: 'Community',
                  ),
                  ChatsListScreen(),
                  StatusListScreen(),
                  FeatureComingSoonWidget(
                    feature: 'Call',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
