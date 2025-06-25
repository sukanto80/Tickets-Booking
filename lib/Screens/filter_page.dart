import 'package:flutter/material.dart';

import 'Tickets/tickets.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final List<String> statusOptions = [
    'New',
    'First response overdue',
    'Customer responded',
    'Overdue',
  ];

  final List<String> priorities = [
    'Select priority',
    'Low',
    'Urgent',
    'Medium',
  ];

  final List<String> tags = [
    'Open',
    'Spam',
    'Closed',
  ];

  Set<String> selectedStatus = {};
  String selectedPriority = 'Select priority';
  String selectedTag = '';
  bool isApplyEnabled() {
    return selectedStatus.isNotEmpty &
        (selectedPriority != 'Select priority') &
        selectedTag.isNotEmpty;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(),
        title: Center(child: const Text('Filters', style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20))),
        actions: [
          TextButton(
            onPressed: isApplyEnabled()
                ? () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TicketsPage()),
              );
            }
                : null, // disabled if false
            child: Text(
              'Apply',
              style: TextStyle(
                color: isApplyEnabled() ? Theme.of(context).colorScheme.primary : Colors.grey,
              ),
            ),
          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text('Status', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...statusOptions.map((status) => CheckboxListTile(
              title: Text(status),
              value: selectedStatus.contains(status),
              onChanged: (value) {
                setState(() {
                  if (value == true) {
                    selectedStatus.add(status);
                  } else {
                    selectedStatus.remove(status);
                  }
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            )),
            const SizedBox(height: 20),
            const Text('Priority', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              value: selectedPriority,
              items: priorities.map((priority) {
                return DropdownMenuItem<String>(
                  value: priority,
                  child: Text(priority),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    selectedPriority = value;
                  });
                }
              },
            ),
            const SizedBox(height: 20),
            const Text('Tags', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search tags',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              children: tags.map((tag) {
                final isSelected = selectedTag == tag;
                return ChoiceChip(
                  label: Text(tag),
                  selected: isSelected,
                  onSelected: (selected) {
                    setState(() {
                      selectedTag = isSelected ? '' : tag;
                    });
                  },
                  selectedColor: Colors.blue.shade100,
                  labelStyle: TextStyle(
                    color: isSelected ? Colors.black : Colors.black54,
                  ),
                );
              }).toList(),
            )

          ],
        ),
      ),
    );
  }
}
