import 'package:flutter/material.dart';
import 'package:flutter/src/material/tabs.dart';
import 'package:flutter/src/material/tab_controller.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/scroll_view.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: tabController,
      tabs: [
        Tab(icon: Icon(Icons.directions_car)),
        Tab(icon: Icon(Icons.directions_transit)),
      ],
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: tabController,
      children: [
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 42,
          itemBuilder: (context, index) {
            return Image.network(
              "https://picsum.photos/id/${index + 1}/200/200",
              scale: 0.3,
            );
          },
        ),
        Container(color: Colors.red),
      ],
    );
  }
}
