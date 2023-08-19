import 'package:flutter/material.dart';
import 'package:whatsapp_ui/core/constants/strings.dart';
import 'package:whatsapp_ui/features/status/widget/my_status_widget.dart';
import 'package:whatsapp_ui/features/status/widget/status_type_with_list_widget.dart';

class StatusListScreen extends StatelessWidget {
  const StatusListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      padding: const EdgeInsets.only(bottom: 98),
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyStatusWidget(
            emptyStatus: true,
            avatar: "",
            myStatusOnTap: () {},
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return StatusTypeWithListWidget(
                  statusType: Strings.statusType[index], statusDataList: []);
            },
          ),
        ],
      ),
    );
  }
}
