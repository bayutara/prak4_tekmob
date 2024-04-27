import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repasswordController = TextEditingController();
  // TODO: Add text editing controllers (101)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
            'assets/diamond.png'), // Ganti 'assets/logo.png' dengan lokasi logo Anda
        title: Text('Shrine'),
        backgroundColor: Colors.blue, // Judul AppBar
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),

            //Diamond dan Registrasi
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                Text(
                  'Registrasi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27.0, // Ubah ukuran teks sesuai kebutuhan Anda
                  ),
                ),
                SizedBox(height: 8.0), // Spacer
                Text(
                  'Silakan lengkapi formulir di bawah ini', // Teks kecil di bawah "Registrasi"
                  style: TextStyle(
                    fontSize: 12.0, // Ubah ukuran teks sesuai kebutuhan Anda
                  ),
                ),
              ],
            ),
            const SizedBox(height: 120.0),

            // Username
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                ),
              ),
            ),

// Spacer
            SizedBox(height: 12.0),
            // spacer
            const SizedBox(height: 12.0),
            // [Password]
            // Password
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                ),
              ),
              obscureText: true,
            ),

// Spacer
            SizedBox(height: 12.0),
            // TODO: Add button bar (101)

            // Retype Password
            TextField(
              controller: repasswordController,
              decoration: InputDecoration(
                labelText: 'Retype Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                ),
              ),
              obscureText: true,
            ),
            // Spacer
            SizedBox(height: 12.0),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              // TODO: Add a beveled rectangular border to CANCEL (103)
              children: <Widget>[
                // TODO: Add buttons (101)
                // TODO: Add buttons (101)
                TextButton(
                  child: const Text('Hapus'),
                  onPressed: () {
                    usernameController.clear();
                    passwordController.clear();
                    repasswordController.clear();

                    // TODO: Show the next page (101)

                    // TODO: Clear the text fields (101)
                  },
                ),
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    // Mengatur latar belakang tombol menjadi biru
                  ),
                  child: const Text(
                    'Daftar',
                    style: TextStyle(
                      color: Colors.white, // Mengatur warna teks menjadi putih
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    // TODO: Show the next page (101)
                    // TODO: Add text editing controllers (101)
                    // TODO: Add text editing controllers (101)
                  },
                ),
              ],
            ),
            // TODO : Remove filled: true values (103)
            // TODO: Add TextField widgets (101)
            // TODO: Add button bar (101)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // Warna latar belakang biru untuk bagian footer
        padding: EdgeInsets.symmetric(
            vertical: 16.0, horizontal: 24.0), // Padding vertikal
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sudah memiliki akun? ', // Teks di sebelah kiri
              style: TextStyle(
                color: Colors.black, // Warna teks putih
              ),
            ),
            TextButton(
              onPressed: () {
                // Tambahkan fungsi untuk tombol "Sign Up" di sini
              },
              child: Text(
                'Sign Up', // Teks tombol "Sign Up"
                style: TextStyle(
                  color: Colors.blue, // Warna teks putih
                  fontWeight: FontWeight.bold, // Teks tebal
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
