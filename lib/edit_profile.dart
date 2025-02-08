import 'package:flutter/material.dart';
import 'package:my_app/app_theme.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController languageController = TextEditingController();
  TextEditingController languageOneController = TextEditingController();
  TextEditingController group249Controller = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Container with image and name inside a frame
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 252, 222, 252), // Light grey background
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Profile Picture
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                              'assets/profile.png'), // Placeholder image
                        ),
                      ),
                      SizedBox(height: 15),

                      // Name
                      Align(
                        alignment: Alignment.center,
                        child: Text("Zhioua Med Amine",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.center,
                        child: Text("Change Profile",
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),

                // First Name Field
                _buildTextField("First Name", "Zhioua", languageController),
                SizedBox(height: 15),

                // Last Name Field
                _buildTextField(
                    "Last Name", "Med Amine", languageOneController),
                SizedBox(height: 15),

                // Location Field
                _buildTextField(
                    "Location", "Nabeul, Menzel Temime", group249Controller),
                SizedBox(height: 15),

                // Mobile Number Field
                _buildTextField("Mobile Number", "24301271", null),
                SizedBox(height: 15),

                // Email Field
                _buildTextField(
                    "Email", "Zhiouaamine@email.com", emailController),
                SizedBox(height: 30),

                // Confirm Button
                ElevatedButton(
                  onPressed: () {
                    // Handle the "Confirm" action
                    // For example, save changes or submit the form
                  },
                  child: Text(
                    "Confirm",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper function to create text fields with consistent styling
  Widget _buildTextField(
      String label, String hint, TextEditingController? controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey, width: 1),
            ),
            prefixIcon: Icon(Icons.edit, color: Colors.blue),
            suffixIcon: Icon(Icons.check, color: Colors.green),
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          ),
        ),
      ],
    );
  }
}
