import 'package:flutter/material.dart';

import '../model/chatModel.dart';

class VCStoryScreen extends StatelessWidget {
  const VCStoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Color(0xFF3B9889),
                        child: Icon(Icons.add, color: Colors.white, size: 25),
                        radius: 26,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Add Status",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Row(
                  children: List.generate(dummyData.length, (i) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          dummyData[i].seen
                              ? CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(dummyData[i].avatarUrl),
                                  radius: 26,
                                )
                              : CircleAvatar(
                                  radius: 26,
                                  backgroundColor: Colors.green,
                                  child: CircleAvatar(
                                    radius: 24,
                                    backgroundImage:
                                        NetworkImage(dummyData[i].avatarUrl),
                                  ),
                                ),
                          const SizedBox(height: 5),
                          Text(
                            dummyData[i].name,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      ),
                    );
                  }),
                )
              ],
            )),
      ),
    );
  }
}
