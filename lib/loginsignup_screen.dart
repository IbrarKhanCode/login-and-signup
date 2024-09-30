import 'package:flutter/material.dart';

class LoginsignupScreen extends StatefulWidget {
  const LoginsignupScreen({super.key});

  @override
  State<LoginsignupScreen> createState() => _LoginsignupScreenState();
}

class _LoginsignupScreenState extends State<LoginsignupScreen> {
  var _isObscure = true;
  var _isObscure2 = true;
  var _isObscure3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                child: Image.asset('images/logo.png'),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Tasktugas',
                style: TextStyle(
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Welcome to Tasktugas',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            textAlign: TextAlign.center,
            'Sign up or login below to manage your \n project, task and productivity',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 30,
          ),
          // Wrap TabBar and TabBarView with DefaultTabController
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  // TabBar with a fixed height
                  SizedBox(
                    height: 50,
                    child: TabBar(
                      labelColor: Colors.green.shade900,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.green.shade900,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(
                          child: Text('Login '),
                        ),
                        Tab(
                          child: Text('Signup '),
                        ),
                      ],
                    ),
                  ),
                  // TabBarView
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey.shade100,
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  height: 60,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 40,
                                          child:
                                              Image.asset('images/apple.png')),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Login with Apple',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 60,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 40,
                                          child:
                                              Image.asset('images/google.png')),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Login with Google',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Divider(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    Text(
                                      'or continue with email',
                                      style: TextStyle(
                                          color: Colors.grey.shade600),
                                    ),
                                    Expanded(
                                      child: Divider(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter your email',
                                      prefixIcon: Icon(
                                        Icons.email_outlined,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green.shade900,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: TextField(
                                    obscureText: _isObscure,
                                    decoration: InputDecoration(
                                      hintText: 'Enter your password',
                                      prefixIcon: Icon(
                                        Icons.lock_outlined,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      suffixIcon: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _isObscure = !_isObscure;
                                            });
                                          },
                                          child: Icon(
                                            _isObscure == false
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: Colors.grey,
                                          )),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green.shade900,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        'Forgot password?',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  height: 50,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen.shade400,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          color: Colors.green.shade900,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    'By agreeing to the term and condition you are entering the login screen',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Your name',
                                      prefixIcon: Icon(
                                        Icons.person_outline_outlined,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green.shade900,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter your email',
                                      prefixIcon: Icon(
                                        Icons.email_outlined,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green.shade900,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: TextField(
                                    obscureText: _isObscure2,
                                    decoration: InputDecoration(
                                      hintText: 'Enter your password',
                                      prefixIcon: Icon(
                                        Icons.lock_outlined,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _isObscure2 = !_isObscure2;
                                          });
                                        },
                                        child: Icon(_isObscure2 == true
                                            ? Icons.visibility_off
                                            : Icons.visibility),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(13),
                                        borderSide: BorderSide(
                                          color: Colors
                                              .white, // Color of the border when not focused
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.green
                                              .shade900, // Color of the border when focused
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: TextField(
                                    obscureText: _isObscure3,
                                    decoration: InputDecoration(
                                      hintText: 'Confirm your password',
                                      prefixIcon: Icon(
                                        Icons.lock_outlined,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      filled: true,
                                      suffixIcon: GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            _isObscure3 = !_isObscure3;
                                          });
                                        },
                                        child: Icon(_isObscure3 == true
                                            ? Icons.visibility_off
                                            : Icons.visibility),
                                      ),
                                      fillColor: Colors.white,
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green.shade900,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.done,
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'At least 8 characters',
                                      style: TextStyle(
                                          color: Colors.grey.shade600),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.done,
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'At least 1 number',
                                      style: TextStyle(
                                          color: Colors.grey.shade600),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.done,
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Both upper and lower case letters',
                                      style: TextStyle(
                                          color: Colors.grey.shade600),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  height: 50,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen.shade400,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                      child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                        color: Colors.green.shade900,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17),
                                  )),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    'By agreeing to the term and conditions you are entering the sign up screen',
                                    style:
                                        TextStyle(color: Colors.grey.shade600),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
