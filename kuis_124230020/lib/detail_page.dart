import 'package:flutter/material.dart';
import 'book.dart';
import 'main.dart';

class DetailPage extends StatefulWidget {
  final Book book;

  const DetailPage({super.key, required this.book});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  void _attemptBuy() {
    // snackbar pembelian sukses floating
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Pembelian buku Berhasil !"),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final book = widget.book;

    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 400,  
              width: double.infinity,
              child: PageView.builder(
                itemCount: book.imageUrls.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: primaryColor.withOpacity(0.5), // opacity border ini
                          width: 2.5, // Ketebalan border
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          book.imageUrls[index],
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => 
                            const Center(child: Icon(Icons.broken_image, size: 100, color: Colors.grey)),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    book.title,
                    style: const TextStyle(
                      fontSize: 30, 
                      fontWeight: FontWeight.bold,
                      color: primaryColor, 
                    ),
                  ),
                                    const Divider(color: Colors.grey, thickness: 1, height: 1),

                  // Text(
                  //   book.author,
                  //   style: const TextStyle(
                  //     fontSize: 17, 
                  //     fontWeight: FontWeight.normal,
                  //     color: Colors.grey,),
                  // ),
                  _buildSpecificationRow(Icons.person, book.author),
                  const SizedBox(height: 2),
                  Text(
                    book.price,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: accentColor, 
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Deskripsi
                  const Text(
                    'Deskripsi Buku',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Divider(color: Colors.grey, thickness: 1, height: 1),
                  const SizedBox(height: 10),
                  Text(
                    book.description,
                    style: const TextStyle(
                      fontSize: 16, 
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 40),

                  SizedBox(
                  //ke url official
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // launchURL(book.officialUrl);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: accentColor,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Kunjungi Situs Resmi', 
                      style: TextStyle(
                        fontSize: 15, 
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.5, 
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),


                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _attemptBuy,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Beli Sekarang', 
                      style: TextStyle(
                        fontSize: 15, 
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.5, 
                      ),
                    ),
                  ),
                ),

                  // Spesifikasi
                  // const Text(
                  //   'Spesifikasi Utama',
                  //   style: TextStyle(
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.bold,
                  //     color: primaryColor,
                  //   ),
                  // ),
                  // const SizedBox(height: 8),
                  // const Divider(color: Colors.grey, thickness: 1, height: 1),
                  // const SizedBox(height: 10),
                  // _buildSpecificationRow(Icons.category, 'Tipe', vehicle.type),
                  // _buildSpecificationRow(Icons.precision_manufacturing, 'Mesin', vehicle.engine),
                  // _buildSpecificationRow(Icons.local_gas_station, 'Bahan Bakar', vehicle.fuelType),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget helper ngerapihin spesifikasi
  Widget _buildSpecificationRow(IconData icon, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(icon, color: accentColor, size: 20), 
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}