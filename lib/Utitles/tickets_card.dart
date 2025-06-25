import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  final String statusLabel;
  final Color statusColor;
  final String subject;
  final String user;
  final String date;
  final String priority;
  final Color priorityColor;
  final List<String> tags;

  const TicketCard({
    super.key,
    required this.statusLabel,
    required this.statusColor,
    required this.subject,
    required this.user,
    required this.date,
    required this.priority,
    required this.priorityColor,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: statusColor.withOpacity(0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                statusLabel,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: statusColor.withOpacity(0.60),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text('#ID 132198423', style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 4),
            Text(subject, style: const TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Text('$user • $date', style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey.withOpacity(0.60),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                ...tags.map((tag) => Container(
                  margin: const EdgeInsets.only(top: 4,right: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                  children: [
                    tag==priority?Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: priorityColor,
                      ),
                    ):SizedBox(),
                    tag==priority? SizedBox(width: 10,):SizedBox(),
                    Text(tag, style: const TextStyle(color: Colors.black)),
                  ],
                  )


                )),
              ],
            )


          ],
            
        ),
      ),
    );
  }
}
