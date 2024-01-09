import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_router/controllers/searchGetxPage.dart';
import 'package:getx_router/controllers/shopGetxPage.dart';

// GetView底层继承自StatelessWidget
class SearchPage extends GetView<SearchGetxController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("搜索"), backgroundColor: Colors.red),
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                // 搜素数据增加 
                controller.getHotList();
              },
              child: Text("Search内容增加")),
          Container(
            padding: EdgeInsets.all(10),
            height: 600,
            child: Obx(
              () => ListView.builder(
                itemCount: controller.hotList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(controller.hotList[index] + "$index"),
                    onTap: () {
                      // Handle item tap
                      print("Tapped on: ${controller.hotList[index]}");
                    },
                  );
                },
              ),
            ),
          )
        ],
      )),
    );
  }
}
