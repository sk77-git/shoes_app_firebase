import 'package:flutter/material.dart';
import 'package:shoe_shop_firebase/modules/dashboard/presentation/pages/products_page.dart';
import 'package:shoe_shop_firebase/modules/dashboard/presentation/widgets/dashboard_app_bar.dart';
import 'package:shoe_shop_firebase/modules/dashboard/presentation/widgets/dashboard_tab_bar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DashboardAppBar(),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: DashboardTabBar(
            tabController: tabController,
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ...List.generate(
              tabController.length,
              (index) => Container(
                    padding:
                        const EdgeInsets.only(top: 16, left: 16, right: 16),
                    child: ProductsPage(
                      categoryId: index,
                    ),
                  ))
        ],
      ),
    );
  }
}
