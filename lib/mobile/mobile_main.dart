import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'mobile_title_page.dart';
import 'mobile_about_page.dart';
import 'mobile_services_page.dart';
import 'mobile_showcase_page.dart';
import 'mobile_contact_page.dart';
import 'mobile_footer.dart';

class MobilePortfolioScreen extends StatefulWidget {
  const MobilePortfolioScreen({super.key});

  @override
  State<MobilePortfolioScreen> createState() => _MobilePortfolioScreenState();
}

class _MobilePortfolioScreenState extends State<MobilePortfolioScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Image.asset(
          'assets/images/dark-bg-icon.png',
          fit: BoxFit.cover,
          height: 40.h,
          color: Colors.grey,
          errorBuilder: (context, error, stackTrace) {
            return Icon(
              Icons.code,
              color: Colors.grey,
              size: 30.sp,
            );
          },
        ),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.grey, size: 30.sp),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'DARK70RD',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Portfolio',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
            _buildDrawerItem(Icons.home, 'Home', 0),
            _buildDrawerItem(Icons.person, 'About', 1),
            _buildDrawerItem(Icons.work, 'Services', 2),
            _buildDrawerItem(Icons.code, 'Projects', 3),
            _buildDrawerItem(Icons.contact_mail, 'Contact', 4),
            Divider(color: Colors.grey.shade700),
            ListTile(
              leading: Icon(FontAwesomeIcons.github, color: Colors.grey, size: 20.sp),
              title: Text('GitHub', style: TextStyle(color: Colors.grey, fontSize: 16.sp)),
              onTap: () {
                // Add GitHub link
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MobileTitlePage(),
            const MobileAboutPage(),
            const MobileServicesPage(),
            const MobileShowcasePage(),
            const MobileContactPage(),
            const MobileFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, int index) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey, size: 24.sp),
      title: Text(
        title,
        style: TextStyle(color: Colors.grey, fontSize: 16.sp),
      ),
      onTap: () {
        Navigator.pop(context);
        // Add scroll to section logic here if needed
      },
    );
  }
}
