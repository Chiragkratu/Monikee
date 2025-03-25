import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child:SingleChildScrollView(
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Icon(
                            Icons.grid_view_rounded,
                            color: Colors.white,
                            size: 18,
                          ),

                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Monikee',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Row(
                      children: [
                        Text(
                          'Hi there! ',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '👋',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Welcome back, Login to your account',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade200),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade200),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        obscureText: !_passwordVisible,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible ? Icons.visibility : Icons.visibility_off,
                              color: Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter OTP',
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        minimumSize: const Size(double.infinity, 52),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.grey.shade300),
                        minimumSize: const Size(double.infinity, 52),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://cdn-icons-png.flaticon.com/512/2991/2991148.png',
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Continue with Google',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.grey.shade300),
                        minimumSize: const Size(double.infinity, 52),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://cdn-icons-png.flaticon.com/512/0/747.png',
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Continue with Apple',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: Container(
                        width: 48,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              )
          )
      ),
    );
  }
}
