import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'models/kas_model.dart';

void main() {
runApp(const KasRTApp());
}

class KasRTApp extends StatelessWidget {
const KasRTApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Aplikasi Kas RT',
theme: ThemeData(
colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
useMaterial3: true,
),
home: const HomePage(),
);
}
}

class HomePage extends StatefulWidget {
const HomePage({super.key});

@override
State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final List<KasItem> _kasList = [];
final _formKey = GlobalKey<FormState>();
String _selectedJenis = 'Pemasukan';
final _nominalController = TextEditingController();
final _keteranganController = TextEditingController();
DateTime _selectedDate = DateTime.now();

void _tambahKas() {
if (_formKey.currentState!.validate()) {
final newItem = KasItem(
id: const Uuid().v4(),
jenis: _selectedJenis,
nominal: double.parse(_nominalController.text),
keterangan: _keteranganController.text,
tanggal: _selectedDate,
);
}


@override
void dispose() {
_nominalController.dispose();
_keteranganController.dispose();
super.dispose();
}

@override
Widget build(BuildContext context) {
final formatCurrency = NumberFormat.currency(locale: 'id', symbol: 'Rp ');
final formatDate = DateFormat('dd MMM yyyy');
}
}