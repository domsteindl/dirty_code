import 'package:flutter/material.dart';

class DirtyScreenTwenty extends StatelessWidget {
  const DirtyScreenTwenty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #20"),
      ),
      body: ListView(
        children: const [
          MyOwnWidget20(imageLink: "https://randomuser.me/api/portraits/women/22.jpg",),
          MyOwnWidget20(imageLink: "https://randomuser.me/api/portraits/women/22.jpg",),
          MyOwnWidget20(imageLink: "https://randomuser.me/api/portraits/women/22.jpg",),
          MyOwnWidget20(imageLink: "https://randomuser.me/api/portraits/women/22.jpg",),
        ],
      ),
    );
  }
}

class MyOwnWidget20 extends StatelessWidget {
  final String imageLink;
  final String badgeLabel;
  final String name;
  final String jobPosition;
  const MyOwnWidget20({
    super.key,
    required this.imageLink,
    this.badgeLabel = "Placeholder",
    this.name = "Max Mustermann",
    this.jobPosition = "Jobless"
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Badge(
        
        label: Text(
          badgeLabel,
          style: const TextStyle(color: Colors.white),
          textAlign: null,
        ),
        
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              imageLink),
        ),
      ),
      
      title: Text(name),
      subtitle: Text(jobPosition),
      trailing: const Icon(Icons.more_vert),
    );
  }
}
