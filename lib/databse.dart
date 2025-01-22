import 'package:cloud_firestore/cloud_firestore.dart';

class Databse {
  static Future addEmployeeDetails(
    Map<String,dynamic>employeeAppInfo,String id)async{
      return await FirebaseFirestore.instance
        .collection("Employeeapp")
        .doc(id)
        .set(employeeAppInfo);
  }

  static Future<Stream<QuerySnapshot>> getemployeeAppInfo()async{
    return await FirebaseFirestore.instance.collection("Employeeapp").snapshots();
  }
}