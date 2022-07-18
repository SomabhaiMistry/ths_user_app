import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ConsultationModel{
  final String imgDoctor,tvDoctorName,tvSpecialist,tvExperience,tvConsultations,tvNextTime;
  ConsultationModel(this.imgDoctor,this.tvDoctorName,this.tvSpecialist,
      this.tvExperience,this.tvConsultations,this.tvNextTime);
}

List<ConsultationModel>modelArrayList = [];