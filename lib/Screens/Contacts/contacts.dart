import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final List<Map<String, String>> contacts = [
    {
      'name': 'Michale Kahnwald',
      'email': 'michel@email.com',
      'phone': '+12 34 56 78 90',
      'address': '12A, Lillistrom, Norway',
      'image': 'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg'
    },
    {
      'name': 'Noah',
      'email': 'michel@email.com',
      'phone': '+12 34 56 78 90',
      'address': '12A, Lillistrom, Norway',
      'image': 'https://img.freepik.com/free-photo/horizontal-portrait-smiling-happy-young-pleasant-looking-female-wears-denim-shirt-stylish-glasses-with-straight-blonde-hair-expresses-positiveness-poses_176420-13176.jpg'
    },
    {
      'name': 'Jonus Kajhnwald',
      'email': 'michel@email.com',
      'phone': '+12 34 56 78 90',
      'address': '12A, Lillistrom, Norway',
      'image': 'https://img.freepik.com/free-photo/cheerful-indian-businessman-smiling-closeup-portrait-jobs-career-campaign_53876-129416.jpg?t=st=1750805413~exp=1750809013~hmac=ff88068c75cdea7a17439afbea741cecb5f5c20782c189cfc889d054ec7c3457&w=996'
    },
    {
      'name': 'Ines',
      'email': 'michel@email.com',
      'phone': '+12 34 56 78 90',
      'address': '12A, Lillistrom, Norway',
    },
    {
      'name': 'Noah',
      'email': 'michel@email.com',
      'phone': '+12 34 56 78 90',
      'address': '12A, Lillistrom, Norway',
      'image': 'https://img.freepik.com/free-photo/horizontal-portrait-smiling-happy-young-pleasant-looking-female-wears-denim-shirt-stylish-glasses-with-straight-blonde-hair-expresses-positiveness-poses_176420-13176.jpg'
    },
    {
      'name': 'Jonus Kajhnwald',
      'email': 'michel@email.com',
      'phone': '+12 34 56 78 90',
      'address': '12A, Lillistrom, Norway',
      'image': 'https://img.freepik.com/free-photo/cheerful-indian-businessman-smiling-closeup-portrait-jobs-career-campaign_53876-129416.jpg?t=st=1750805413~exp=1750809013~hmac=ff88068c75cdea7a17439afbea741cecb5f5c20782c189cfc889d054ec7c3457&w=996'
    },
    {
      'name': 'Ines',
      'email': 'michel@email.com',
      'phone': '+12 34 56 78 90',
      'address': '12A, Lillistrom, Norway',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text('M360ICT', style: TextStyle(color: Colors.black)),
        actions: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_none, color: Colors.black),
                onPressed: () {},
              ),
              const Positioned(
                right: 8,
                top: 8,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.red,
                  child: Text('3', style: TextStyle(fontSize: 10, color: Colors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search contacts',
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('${contacts.length} Contacts', style: const TextStyle(color: Colors.grey)),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (_, index) {
                  var data = contacts[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.09),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              data.containsKey('image')
                                  ? CircleAvatar(
                                backgroundImage: NetworkImage(data['image']!),
                                radius: 24,
                              )
                                  : CircleAvatar(
                                backgroundColor: Colors.blue.shade50,
                                child: Text(data['name']![0]),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(data['name']!, style: const TextStyle(fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ),
                              PopupMenuButton<String>(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                onSelected: (value) {
                                  // Handle actions
                                },
                                itemBuilder: (context) => [
                                  const PopupMenuItem(value: 'edit', child: Text('Edit')),
                                  const PopupMenuItem(value: 'view', child: Text('View tickets')),
                                  const PopupMenuItem(value: 'delete', child: Text('Delete')),
                                ],
                                icon: const Icon(Icons.more_horiz),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.email_outlined, size: 16,color: Colors.grey,),
                              const SizedBox(width: 6),
                              Text(data['email']!, style: const TextStyle(color: Colors.grey)),
                            ],
                          ),
                          const SizedBox(height: 2),
                          Row(
                            children: [
                              const Icon(Icons.phone_outlined, size: 16,color: Colors.grey),
                              const SizedBox(width: 6),
                              Text(data['phone']!, style: const TextStyle(color: Colors.grey)),
                            ],
                          ),
                          const SizedBox(height: 2),
                          Row(
                            children: [
                              const Icon(Icons.location_on_outlined, size: 16,color: Colors.grey),
                              const SizedBox(width: 6),
                              Text(data['address']!, style: const TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
