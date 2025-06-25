import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<Role> roles = [
    Role(
      role: 'Manager',
      group: 'Codecayaneon support',
      managerName: 'Jonaus Kahnwald',
      managerImage: 'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg',
    ),
    Role(
      role: 'Agent',
      group: 'Laravel project',
      managerName: 'Jonas K.',
      managerImage: 'https://img.freepik.com/free-photo/cheerful-indian-businessman-smiling-closeup-portrait-jobs-career-campaign_53876-129416.jpg?t=st=1750805413~exp=1750809013~hmac=ff88068c75cdea7a17439afbea741cecb5f5c20782c189cfc889d054ec7c3457&w=996',
    ),
    Role(
      role: 'Viewer',
      group: 'Mobile team',
      managerName: 'Alice M.',
      managerImage: 'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/cheerful-indian-businessman-smiling-closeup-portrait-jobs-career-campaign_53876-129416.jpg?t=st=1750805413~exp=1750809013~hmac=ff88068c75cdea7a17439afbea741cecb5f5c20782c189cfc889d054ec7c3457&w=996',
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jonaus Kahnwald',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 4),
                        Text('Support', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                  const Icon(Icons.edit, size: 20, color: Colors.grey),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Basic Info
            const Text('Basic info', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            const _LabelValue(label: 'First Name', value: 'Jonaus'),
            const _LabelValue(label: 'Last Name', value: 'Kahnwald'),
            const _LabelValue(label: 'Email', value: 'Username@email.com'),
            const SizedBox(height: 24),

            // Assigned Roles
            const Text('Assigned roles (3)', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 12),
            SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: roles.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final role = roles[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: _RoleCard(
                      role: role.role,
                      group: role.group,
                      managerName: role.managerName,
                      managerImage: role.managerImage,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 32),

            // Logout Button
            SizedBox(
              width: double.infinity,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                  backgroundColor: Colors.red.shade50,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                icon: const Icon(Icons.logout,color: Colors.red,),
                label: const Text('Logout'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LabelValue extends StatelessWidget {
  final String label;
  final String value;

  const _LabelValue({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey, fontSize: 13)),
          const SizedBox(height: 2),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
        ],
      ),
    );
  }
}

class _RoleCard extends StatelessWidget {
  final String role;
  final String group;
  final String managerName;
  final String managerImage;

  const _RoleCard({
    required this.role,
    required this.group,
    required this.managerName,
    required this.managerImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(role, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
          const SizedBox(height: 10),
          Divider(height: 1, thickness: 1, color: Colors.grey.withOpacity(0.5)),
          const SizedBox(height: 10),
          Text('Group', style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
          Text(group, style: const TextStyle(fontSize: 13)),
          const SizedBox(height: 8),
          Text('Manager', style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
          Row(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundImage: NetworkImage(managerImage),
              ),
              const SizedBox(width: 6),
              Text(managerName, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13)),
            ],
          )
        ],
      ),
    );
  }
}

class Role {
  final String role;
  final String group;
  final String managerName;
  final String managerImage;

  Role({
    required this.role,
    required this.group,
    required this.managerName,
    required this.managerImage,
  });
}
