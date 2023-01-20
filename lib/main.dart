import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isIos = false;
  bool lockApp = true;
  bool finger = false;
  bool password = true;

  @override
  Widget build(BuildContext context) {
    return (isIos)
        ? CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                backgroundColor: const Color(0xffff2f01),
                middle: const Text(
                  "Settings UI",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                trailing: CupertinoSwitch(
                  activeColor: Colors.indigo.shade300,
                  value: isIos,
                  onChanged: (val) {
                    setState(() {
                      isIos = val;
                    });
                  },
                ),
              ),
              backgroundColor: const Color(0xfff3eff9),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 25),
                      child: Text(
                        "Common",
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 10),
                            child: Row(
                              children: [
                                const SizedBox(width: 2),
                                Icon(Icons.language,
                                    size: 30, color: Colors.grey.shade600),
                                const SizedBox(width: 25),
                                const Text("Language",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                const Spacer(),
                                Text("English",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade600)),
                                const SizedBox(width: 5),
                                Icon(Icons.chevron_right,color: Colors.grey.shade600,size: 30),
                                const SizedBox(width: 5),
                              ],
                            ),
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 10),
                            color: Colors.grey.shade300,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                            child: Row(
                              children: [
                                const SizedBox(width: 2),
                                Icon(Icons.cloud_outlined,
                                    size: 30, color: Colors.grey.shade600),
                                const SizedBox(width: 25),
                                const Text("Environment",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                const Spacer(),
                                Text("Production",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade600)),
                                const SizedBox(width: 5),
                                Icon(Icons.chevron_right,color: Colors.grey.shade600,size: 30),
                                const SizedBox(width: 5),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 30),
                      child: Text(
                        "Account",
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                const SizedBox(width: 2),
                                Icon(Icons.phone,
                                    size: 30, color: Colors.grey.shade600),
                                const SizedBox(width: 25),
                                const Text("Phone number",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                const Spacer(),
                                Icon(Icons.chevron_right,color: Colors.grey.shade600,size: 30),
                                const SizedBox(width: 5),
                              ],
                            ),
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 10),
                            color: Colors.grey.shade300,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                const SizedBox(width: 2),
                                Icon(Icons.email,
                                    size: 30, color: Colors.grey.shade600),
                                const SizedBox(width: 25),
                                const Text("Email",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                const Spacer(),
                                Icon(Icons.chevron_right,color: Colors.grey.shade600,size: 30),
                                const SizedBox(width: 5),
                              ],
                            ),
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 10),
                            color: Colors.grey.shade300,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10,bottom: 10),
                            child: Row(
                              children: [
                                const SizedBox(width: 2),
                                Icon(Icons.login_outlined, size: 30, color: Colors.grey.shade600),
                                const SizedBox(width: 25),
                                const Text("Sign out",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                const Spacer(),
                                Icon(Icons.chevron_right,color: Colors.grey.shade600,size: 30),
                                const SizedBox(width: 5),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 30),
                      child: Text(
                        "Security",
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Icon(Icons.phonelink_lock,
                                          size: 30, color: Colors.grey.shade600),
                                    )),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.only(left: 12),
                                    child: const Text(
                                      "Lock app in background",
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: CupertinoSwitch(
                                        activeColor: const Color(0xffff4500),
                                        value: lockApp,
                                        onChanged: (val) {
                                          setState(() {
                                            lockApp = val;
                                          });
                                        }),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 10),
                            color: Colors.grey.shade300,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Icon(Icons.fingerprint,
                                          size: 30, color: Colors.grey.shade600),
                                    )),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.only(left: 12),
                                    child: const Text(
                                      "Use fingerprint",
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: CupertinoSwitch(
                                        activeColor: const Color(0xffff4500),
                                        value: finger,
                                        onChanged: (val) {
                                          setState(() {
                                            finger = val;
                                          });
                                        }),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 10),
                            color: Colors.grey.shade300,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10,bottom: 10),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Icon(Icons.lock,
                                          size: 30, color: Colors.grey.shade600),
                                    )),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.only(left: 12),
                                    child: const Text(
                                      "Change password",
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: CupertinoSwitch(
                                        activeColor: const Color(0xffff4500),
                                        value: password,
                                        onChanged: (val) {
                                          setState(() {
                                            password = val;
                                          });
                                        }),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 30),
                      child: Text(
                        "Misc",
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                const SizedBox(width: 2),
                                Icon(Icons.text_snippet,
                                    size: 30, color: Colors.grey.shade600),
                                const SizedBox(width: 25),
                                const Text("Terms of service",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                const Spacer(),
                                Icon(Icons.chevron_right,color: Colors.grey.shade600,size: 30),
                                const SizedBox(width: 5),
                              ],
                            ),
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 10),
                            color: Colors.grey.shade300,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                            child: Row(
                              children: [
                                const SizedBox(width: 2),
                                Icon(Icons.collections_bookmark,
                                    size: 30, color: Colors.grey.shade600),
                                const SizedBox(width: 25),
                                const Text("Open Source licences",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                const Spacer(),
                                Icon(Icons.chevron_right,color: Colors.grey.shade600,size: 30),
                                const SizedBox(width: 5),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          )
        : MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: const Text("Settings UI"),
                actions: [
                  Switch(
                      activeColor: Colors.indigo,
                      value: isIos,
                      onChanged: (val) {
                        setState(() {
                          isIos = val;
                        });
                      }),
                ],
                backgroundColor: const Color(0xffff4500),
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, top: 25),
                      child: Text(
                        "Common",
                        style: TextStyle(
                            color: Color(0xffff4500),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 25),
                      child: Row(
                        children: [
                          const SizedBox(width: 2),
                          Icon(Icons.language,
                              size: 30, color: Colors.grey.shade600),
                          const SizedBox(width: 25),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Language",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                              Text("English",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade600)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 15),
                      color: Colors.grey.shade300,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Row(
                        children: [
                          const SizedBox(width: 2),
                          Icon(Icons.cloud_outlined,
                              size: 30, color: Colors.grey.shade600),
                          const SizedBox(width: 25),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Environment",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                              Text("Production",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade600)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, top: 40),
                      child: Text(
                        "Account",
                        style: TextStyle(
                            color: Color(0xffff4500),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 25),
                      child: Row(
                        children: [
                          const SizedBox(width: 2),
                          Icon(Icons.phone,
                              size: 30, color: Colors.grey.shade600),
                          const SizedBox(width: 25),
                          const Text("Phone number",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 15),
                      color: Colors.grey.shade300,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Row(
                        children: [
                          const SizedBox(width: 2),
                          Icon(Icons.email,
                              size: 30, color: Colors.grey.shade600),
                          const SizedBox(width: 25),
                          const Text("Email",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 15),
                      color: Colors.grey.shade300,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Row(
                        children: [
                          const SizedBox(width: 2),
                          Icon(Icons.login_outlined,
                              size: 30, color: Colors.grey.shade600),
                          const SizedBox(width: 25),
                          const Text("Sign out",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, top: 40),
                      child: Text(
                        "Security",
                        style: TextStyle(
                            color: Color(0xffff4500),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 25),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(Icons.phonelink_lock,
                                    size: 30, color: Colors.grey.shade600),
                              )),
                          Expanded(
                            flex: 6,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 12),
                              child: const Text(
                                "Lock app in background",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.center,
                              child: Switch(
                                  activeColor: const Color(0xffff4500),
                                  value: lockApp,
                                  onChanged: (val) {
                                    setState(() {
                                      lockApp = val;
                                    });
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.grey.shade300,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 6),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(Icons.fingerprint,
                                    size: 30, color: Colors.grey.shade600),
                              )),
                          Expanded(
                            flex: 6,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 12),
                              child: const Text(
                                "Use fingerprint",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.center,
                              child: Switch(
                                  activeColor: const Color(0xffff4500),
                                  value: finger,
                                  onChanged: (val) {
                                    setState(() {
                                      finger = val;
                                    });
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.grey.shade300,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 6),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(Icons.lock,
                                    size: 30, color: Colors.grey.shade600),
                              )),
                          Expanded(
                            flex: 6,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 12),
                              child: const Text(
                                "Change password",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.center,
                              child: Switch(
                                  activeColor: const Color(0xffff4500),
                                  value: password,
                                  onChanged: (val) {
                                    setState(() {
                                      password = val;
                                    });
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, top: 40),
                      child: Text(
                        "Misc",
                        style: TextStyle(
                            color: Color(0xffff4500),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Row(
                        children: [
                          const SizedBox(width: 2),
                          Icon(Icons.text_snippet,
                              size: 30, color: Colors.grey.shade600),
                          const SizedBox(width: 25),
                          const Text("Terms of service",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 15),
                      color: Colors.grey.shade300,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 15, bottom: 20),
                      child: Row(
                        children: [
                          const SizedBox(width: 2),
                          Icon(Icons.collections_bookmark,
                              size: 30, color: Colors.grey.shade600),
                          const SizedBox(width: 25),
                          const Text("Open Source licences",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
