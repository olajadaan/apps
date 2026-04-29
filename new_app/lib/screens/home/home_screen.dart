import 'package:flutter/material.dart';
import 'package:new_app/core/theme/app_colors.dart';
import 'package:new_app/core/widgets/custom_text_field.dart';
import 'package:new_app/core/widgets/loading_widget.dart';
import 'package:new_app/screens/home/search.dart';
//import '../../shared/widgets/custom_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الرئيسية'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              Navigator.pushNamed(context, 'SearchRidesScreen');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomCard(
              color: AppColors.primary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'إجمالي الرصيد',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '\$24,500.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.trending_up, color: Colors.greenAccent, size: 16),
                      SizedBox(width: 4),
                      Text(
                        '+2.5% اليوم',
                        style: TextStyle(color: Colors.greenAccent, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'الخدمات السريعة',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                _buildServiceItem(context, Icons.send, 'رحلات مخصصة'),
                _buildServiceItem(context, Icons.account_balance_wallet, 'حجز سريع'),
                _buildServiceItem(context, Icons.swap_horiz, 'نقاط الانطلاق'),
                _buildServiceItem(context, Icons.more_horiz, 'شركات متعددة'),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'قائمة الرحلات المقترحة',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              separatorBuilder: (_, __) => const Divider(height: 24),
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: AppColors.border.withValues(alpha: 0.3),
                    child: const Icon(Icons.arrow_downward, color: AppColors.primary),
                  ),
                  title: const Text('من حلب الى دمشق الانطلاق الساعة 10:00'),
                  subtitle: const Text('السعر 20\$'),
                  trailing: const Text(
                    '+\$500.00',
                    style: TextStyle(
                      color: Color(0xFFF9A825),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textSecondary,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'رئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'بحث',),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label:'حجوزاتي'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'مستخدم'),
        ],
      ),
    );
  }

  Widget _buildServiceItem(BuildContext context, IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.border),
          ),
          child: Icon(icon, color: AppColors.primary),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}