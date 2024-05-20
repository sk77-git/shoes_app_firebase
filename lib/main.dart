import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'shoes_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyCkTbuMRVjW5N0okpR6ap6-_TasOy-ED1E',
    appId: '1:447168054624:android:1c3267ffb3b3ceda8e8a05',
    messagingSenderId: 'sendid',
    projectId: 'shoes-app-flutter-13600',
    storageBucket: 'shoes-app-flutter-13600.appspot.com',
  ));
  runApp(const ShoesApp());
}
