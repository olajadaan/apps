// import 'package:flutter/material.dart';


// class SearchRidesScreen extends StatefulWidget {
//   @override
//   _SearchRidesScreenState createState() => _SearchRidesScreenState();
// }

// class _SearchRidesScreenState extends State<SearchRidesScreen> {
//   final TextEditingController fromController = TextEditingController();
//   final TextEditingController toController = TextEditingController();
//   int selectedTab = 0; // 0: بحث, 1: رحلاتي

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             // ✅ الشريط العلوي (مثل الصورة)
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   // زر الرجوع (اختياري)
//                   Icon(Icons.arrow_back_ios, color: Colors.white70, size: 20),
//                   // شعار أو عنوان
//                   Text(
//                     'Bullmanat',
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.w600,
//                       letterSpacing: 1,
//                       color: Colors.white,
//                     ),
//                   ),
//                   // أيقونة جانبية
//                   Icon(Icons.menu, color: Colors.white70, size: 24),
//                 ],
//               ),
//             ),
//             SizedBox(height: 50,),
//             Text("البحث عن رحلات"),

//             Expanded(
//               child: IndexedStack(
//                 index: selectedTab,
//                 children: [
//                   // ✅ شاشة البحث
//                   _buildSearchTab(),
//                   // ✅ شاشة رحلاتي (بسيطة)
//                   // _buildMyRidesTab(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTabButton(String title, int index) {
//     bool isSelected = selectedTab == index;
//     return Expanded(
//       child: GestureDetector(
//         onTap: () => setState(() => selectedTab = index),
//         child: Container(
//           padding: EdgeInsets.symmetric(vertical: 12),
//           decoration: BoxDecoration(
//             color: isSelected ? Color(0xFF2D3E4F) : Colors.transparent,
//             borderRadius: BorderRadius.circular(30),
//             border: Border.all(
//               color: isSelected ? Color(0xFF4A6A7F) : Color(0xFF2A3A48),
//             ),
//           ),
//           child: Center(
//             child: Text(
//               title,
//               style: TextStyle(
//                 color: isSelected ? Colors.white : Colors.grey.shade500,
//                 fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   Widget _buildSearchTab() {
//     return SingleChildScrollView(
//       padding: EdgeInsets.all(20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // ✅ حقول البحث (من / إلى)
//           Text("من:", style: TextStyle(color: Colors.grey.shade400, fontSize: 14)),
//           SizedBox(height: 6),
//           TextField(
//             controller: fromController,
//             decoration: InputDecoration(
//               prefixIcon: Icon(Icons.location_on_outlined, color: Colors.grey.shade500),
//             ),
//           ),
//           SizedBox(height: 20),

//           Text("إلى:", style: TextStyle(color: Colors.grey.shade400, fontSize: 14)),
//           SizedBox(height: 6),
//           TextField(
//             controller: toController,
//             decoration: InputDecoration(
//               prefixIcon: Icon(Icons.location_on_outlined, color: Colors.grey.shade500),
//             ),
//           ),
//           SizedBox(height: 24),

//           // ✅ زر "البحث" الرئيسي
//           SizedBox(
//             width: double.infinity,
//             // child: ElevatedButton(
//             //   onPressed: () {
//             //     // هنا منطق البحث
//             //     ScaffoldMessenger.of(context).showSnackBar(
//             //       SnackBar(content: Text('جاري البحث عن رحلات...')),
//             //     );
//             //   },
//             //   style: ElevatedButton.styleFrom(
//             //     backgroundColor: Color(0xFF3A6B8C),
//             //     padding: EdgeInsets.symmetric(vertical: 14),
//             //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//             //   ),
//             //   child: Text(
//             //     'بحث',
//             //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             //   ),
//             // ),
//           ),
//           SizedBox(height: 30),

//           // ✅ قسم "نقاط الإطلاق" (زي الصورة)
//           Container(
//             child: Row(
//               children: [
//                 Icon(Icons.flag_outlined, color: Color(0xFF5D8FAA), size: 22),
//                 SizedBox(width: 8),
//                 Text(
//                   "نقاط الإطلاق",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 20,),
//           Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//               child: Row(
//                 children: [
//                   _buildTabButton("بحث عن رحلات", 0),
                 
//                 ],
//               ),
//             ),
//         ],
//       ),
//     );
//   }

 
//   }
import 'package:flutter/material.dart';

class SearchTripsPage extends StatefulWidget {
  const SearchTripsPage({super.key});

  @override
  State<SearchTripsPage> createState() => _SearchTripsPageState();
}

class _SearchTripsPageState extends State<SearchTripsPage> {
  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController departureController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "البحث عن رحلات",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInputField("من:", fromController),
            const SizedBox(height: 12),
            _buildInputField("إلى:", toController),
            const SizedBox(height: 12),
            _buildInputField("التاريخ:", dateController),
            const SizedBox(height: 12),
            _buildInputField("نقطة الإنطلاق:", departureController),
            const SizedBox(height: 24),

            // زر البحث
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF005DC9), // أزرق غامق
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // منطق البحث
                },
                child: const Text(
                  "بحث",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),

      // شريط التنقل السفلي
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF005DC9),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "رئيسية"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "بحث"),
          BottomNavigationBarItem(icon: Icon(Icons.confirmation_num), label: "حجوزاتي"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "مستخدم"),
        ],
      ),
    );
  }

  
  Widget _buildInputField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
  
