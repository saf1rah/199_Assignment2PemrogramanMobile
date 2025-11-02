import 'package:flutter/material.dart';

class TheaterScreen extends StatefulWidget {
  const TheaterScreen({super.key});

  @override
  State<TheaterScreen> createState() => _TheaterScreenState();
}

class _TheaterScreenState extends State<TheaterScreen> {

  String selectedCity = 'MEDAN';
  final theaters = ['XI CINEMA', 'PONDOK KELAPA 21', 'CGV', 'CINEPOLIS', 'CP MALL', 'HERMES'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF2B2D42), // warna biru tua elegan
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white), // ⬅️ ini bikin ikon < jadi putih
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Theater', // teks "Theater"
            style: TextStyle(
              color: Colors.white, // ⬅️ ini bikin teks jadi putih
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.shade200,
              ),
              child: ListTile(
                leading: const Icon(Icons.location_on),
                title: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedCity,
                    items: const [
                      DropdownMenuItem(value: 'MEDAN', child: Text('MEDAN')),
                      DropdownMenuItem(value: 'JAKARTA', child: Text('JAKARTA')),
                      DropdownMenuItem(value: 'BANDUNG', child: Text('BANDUNG')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedCity = value!;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: theaters.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade100,
                    ),
                    child: ListTile(
                      title: Text(theaters[index]),
                      trailing: const Icon(Icons.keyboard_arrow_down),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
