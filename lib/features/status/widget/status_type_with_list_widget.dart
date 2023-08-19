import 'package:flutter/material.dart';
import 'package:whatsapp_ui/core/constants/app_text_styles.dart';
import 'package:whatsapp_ui/features/status/model/status_data_model.dart';
import 'package:whatsapp_ui/features/status/widget/single_status_widget.dart';

class StatusTypeWithListWidget extends StatelessWidget {
  final String? statusType;
  final List<StatusData>? statusDataList;
  const StatusTypeWithListWidget({
    super.key,
    this.statusType,
    this.statusDataList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 16),
          child: Text(
            statusType ?? "",
            style: AppTextStyles.f12w400Neutral01,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 8,
          itemBuilder: (context, index) {
            return SingleStatusWidget(
              name: "Deb P",
              time: "5 minutes ago",
              avatar: "",
              statusCount: 2,
              statusOnTap: () {},
            );
          },
        ),
      ],
    );
  }
}
