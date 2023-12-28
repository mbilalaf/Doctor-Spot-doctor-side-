class ReviewModel {
  final String img;
  final String name;
  final String patientId;
  final String hospitalName;
  final String date;
  final String time;
  final String review;

  ReviewModel({
    required this.img,
    required this.name,
    required this.patientId,
    required this.hospitalName,
    required this.date,
    required this.time,
    required this.review,
  });
}

// Negative In-Clinic List
List<ReviewModel> negativeInClinicList = [
  ReviewModel(
    img: 'assets/images/img-1.png',
    name: 'Bessie Coleman',
    patientId: '#46838439',
    hospitalName: 'Kohat Medical Center ...',
    date: 'Sunday, 12 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
  ReviewModel(
    img: 'assets/images/img-2.png',
    name: 'Kathryn Murphy',
    patientId: '#46838440',
    hospitalName: 'Nor (MHC) Clinic Pes...',
    date: 'Sunday, 13 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
  ReviewModel(
    img: 'assets/images/img-4.png',
    name: 'Brooklyn Simmons',
    patientId: '#46838441',
    hospitalName: 'Janah memorial Clinic ...',
    date: 'Sunday, 14 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
];

// Negative Video Call Consultation List
List<ReviewModel> negativeVidoeConsultationList = [
  ReviewModel(
    img: 'assets/images/img-4.png',
    name: 'Ronald Richards',
    patientId: '#46838439',
    hospitalName: 'Kohat Medical Center ...',
    date: 'Sunday, 12 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
  ReviewModel(
    img: 'assets/images/img-5.png',
    name: 'Jenny Wilson',
    patientId: '#46838440',
    hospitalName: 'Nor (MHC) Clinic Pes...',
    date: 'Sunday, 13 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
  ReviewModel(
    img: 'assets/images/img-6.png',
    name: 'Jenny Wilson',
    patientId: '#46838441',
    hospitalName: 'Janah memorial Clinic ...',
    date: 'Sunday, 14 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
];

// Positive In-Clinic List
List<ReviewModel> positiveInClinicList = [
  ReviewModel(
    img: 'assets/images/img-7.png',
    name: 'Bessie Coleman',
    patientId: '#46838439',
    hospitalName: 'Kohat Medical Center ...',
    date: 'Sunday, 12 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
  ReviewModel(
    img: 'assets/images/img-8.png',
    name: 'Kathryn Murphy',
    patientId: '#46838440',
    hospitalName: 'Nor (MHC) Clinic Pes...',
    date: 'Sunday, 13 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
  ReviewModel(
    img: 'assets/images/img-9.png',
    name: 'Brooklyn Simmons',
    patientId: '#46838441',
    hospitalName: 'Janah memorial Clinic ...',
    date: 'Sunday, 14 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
];

// positive Video Call Consultation List
List<ReviewModel> positiveVidoeConsultationList = [
  ReviewModel(
    img: 'assets/images/img-10.png',
    name: 'Ronald Richards',
    patientId: '#46838439',
    hospitalName: 'Kohat Medical Center ...',
    date: 'Sunday, 12 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
  ReviewModel(
    img: 'assets/images/img-11.png',
    name: 'Jenny Wilson',
    patientId: '#46838440',
    hospitalName: 'Nor (MHC) Clinic Pes...',
    date: 'Sunday, 13 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
  ReviewModel(
    img: 'assets/images/img-12.png',
    name: 'Jenny Wilson',
    patientId: '#46838441',
    hospitalName: 'Janah memorial Clinic ...',
    date: 'Sunday, 14 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
];

// Pending In-Clinic List
List<ReviewModel> pendingInClinicList = [
  ReviewModel(
    img: 'assets/images/img-7.png',
    name: 'Bessie Coleman',
    patientId: '#46838439',
    hospitalName: 'Kohat Medical Center ...',
    date: 'Sunday, 12 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
  ReviewModel(
    img: 'assets/images/img-8.png',
    name: 'Kathryn Murphy',
    patientId: '#46838440',
    hospitalName: 'Nor (MHC) Clinic Pes...',
    date: 'Sunday, 13 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
  ReviewModel(
    img: 'assets/images/img-9.png',
    name: 'Brooklyn Simmons',
    patientId: '#46838441',
    hospitalName: 'Janah memorial Clinic ...',
    date: 'Sunday, 14 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
];

// positive Video Call Consultation List
List<ReviewModel> pendingVidoeConsultationList = [
  ReviewModel(
    img: 'assets/images/img-10.png',
    name: 'Ronald Richards',
    patientId: '#46838439',
    hospitalName: 'Kohat Medical Center ...',
    date: 'Sunday, 12 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
  ReviewModel(
    img: 'assets/images/img-11.png',
    name: 'Jenny Wilson',
    patientId: '#46838440',
    hospitalName: 'Nor (MHC) Clinic Pes...',
    date: 'Sunday, 13 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
  ReviewModel(
    img: 'assets/images/img-12.png',
    name: 'Jenny Wilson',
    patientId: '#46838441',
    hospitalName: 'Janah memorial Clinic ...',
    date: 'Sunday, 14 June',
    time: '11:00 - 12:00 AM',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
  ),
];
