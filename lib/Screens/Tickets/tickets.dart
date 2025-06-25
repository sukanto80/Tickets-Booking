import 'package:flutter/material.dart';

import '../../Utitles/tickets_card.dart';
import '../filter_page.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({super.key});

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  final List<Map<String, dynamic>> tickets =  [
    {
      'statusLabel': 'New',
      'statusColor': Colors.blue,
      'subject': 'Search view, which can display dynamic suggestions, is the focused state of search bar.',
      'user': 'Michale',
      'date': '23 Dec 2023 03:43 PM',
      'priority': 'Low',
      'priorityColor': Colors.green,
      'tags': ['Low','Open']
    },
    {
      'statusLabel': 'First response overdue',
      'statusColor': Colors.orange,
      'subject': 'Ticket subject small',
      'user': 'Noah',
      'date': '23 Dec 2023 03:43 PM',
      'priority': 'Urgent',
      'priorityColor': Colors.red,
      'tags': ['Urgent','Open','Spam']
    },
    {
      'statusLabel': 'Customer responded',
      'statusColor': Colors.purple,
      'subject': 'Search view, which can display dynamic suggestions, is the focused state of search bar.',
      'user': 'Jonus',
      'date': '23 Dec 2023 03:43 PM',
      'priority': 'Low',
      'priorityColor': Colors.green,
      'tags': ['Low','Open']
    },
    {
      'statusLabel': 'Overdue',
      'statusColor': Colors.red,
      'subject': 'Search view, which can display dynamic suggestions, is the focused state of search bar.',
      'user': 'Michale',
      'date': '23 Dec 2023 03:43 PM',
      'priority': 'Low',
      'priorityColor': Colors.green,
      'tags': ['Low','Open']
    },
    {
      'statusLabel': 'First response overdue',
      'statusColor': Colors.orange,
      'subject': 'Ticket subject small',
      'user': 'Noah',
      'date': '23 Dec 2023 03:43 PM',
      'priority': 'Urgent',
      'priorityColor': Colors.red,
      'tags': ['Urgent','Open', 'Spam']
    },
    {
      'statusLabel': 'Customer responded',
      'statusColor': Colors.purple,
      'subject': 'Search view, which can display dynamic suggestions, is the focused state of search bar.',
      'user': 'Jonus',
      'date': '23 Dec 2023 03:43 PM',
      'priority': 'Low',
      'priorityColor': Colors.green,
      'tags': ['Low','Open']
    },
    {
      'statusLabel': 'First response overdue',
      'statusColor': Colors.orange,
      'subject': 'Ticket subject small',
      'user': 'Noah',
      'date': '23 Dec 2023 03:43 PM',
      'priority': 'Urgent',
      'priorityColor': Colors.red,
      'tags': ['Urgent','Open', 'Spam']
    },
    {
      'statusLabel': 'Customer responded',
      'statusColor': Colors.purple,
      'subject': 'Search view, which can display dynamic suggestions, is the focused state of search bar.',
      'user': 'Jonus',
      'date': '23 Dec 2023 03:43 PM',
      'priority': 'Low',
      'priorityColor': Colors.green,
      'tags': ['Low','Open']
    }


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('M360ICT', style: TextStyle(color: Colors.black)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                IconButton(
                  icon: const Icon(Icons.notifications_none),
                  onPressed: () {},
                ),
                const CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.red,
                  child: Text('3', style: TextStyle(fontSize: 10, color: Colors.white)),
                ),
              ],
            ),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${tickets.length} tickets'),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FilterScreen()),
                      );
                    },
                      child: Icon(Icons.filter_alt_outlined)
                  )
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height:600,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: tickets.length,
                    itemBuilder: (_,index){
                    var data = tickets[index];
                    return TicketCard(
                      statusLabel: data['statusLabel'],
                      statusColor: data['statusColor'],
                      subject:
                      data['subject'],
                      user: data['user'],
                      date: data['date'],
                      priority: data['priority'],
                      tags: data['tags'],
                      priorityColor: data['priorityColor'],
                    );

                    }
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
