import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 44,
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Icon(
                  Icons.person_outline,
                  size: 48,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.person_outline),
                        title: Text("Name"),
                        subtitle: Text("Milan"),
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: Icon(Icons.badge_outlined),
                        title: Text("Role"),
                        subtitle: Text("Student"),
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: Icon(Icons.email_outlined),
                        title: Text("Email"),
                        subtitle: Text("student@example.com"),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                      label: const Text("Back"),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.edit_outlined),
                      label: const Text("Edit Profile"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}