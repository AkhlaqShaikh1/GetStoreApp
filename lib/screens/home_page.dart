import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_store_app/controllers/store_contollers.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<StoreController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("${controller.storeName}"),
        backgroundColor: Colors.purple[400],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 350,
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.purple[300],
                      child: Text(
                        textAlign: TextAlign.center,
                        "${controller.storeName}",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Obx(
                  () => Text(
                    "Store Followers: ${controller.followerCount}",
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Obx(
                  () => Text(
                    controller.storeStatus.value ? "Open" : "Closed",
                    style: TextStyle(
                      fontSize: 25,
                      color: !controller.storeStatus.value
                          ? Colors.red
                          : Colors.green,
                    ),
                  ),
                ),
                Obx(
                  () => Switch(
                    value: controller.storeStatus.value,
                    onChanged: (value) => controller.changeStatus((value)),
                    activeColor: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.incrementFollowers(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
