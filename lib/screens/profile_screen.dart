import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  void initState() {
    super.initState();
    userController.fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Users"),
      ),
      body: GetBuilder(
          init: ProfileController(),
          builder: (detail) {
            return FutureBuilder(
                future: detail.fetchUsers(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: Column(
                        children: [
                          CircularProgressIndicator(),
                          Text("Loading users...")
                        ],
                      ),
                    );
                  } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          final result = snapshot.data?[index];
                          return Card(
                            color: const Color.fromARGB(255, 75, 102, 122),
                            child: ListTile(
                              title: Text("Name: ${result!.name}"),
                              subtitle: Text("Email: ${result.email}"),
                            ),
                          );
                        });
                  }
                });
          }),
    );
  }
}
