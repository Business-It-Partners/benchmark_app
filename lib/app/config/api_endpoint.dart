class ApiEndpoints {
  // static const baseUrl = "http://192.168.18.12:8080";
  static const baseUrl = "https://app-admin.benchmark-publication.com";

  //----------REGISTRATION URL
  static const registerPhase1 =
      "$baseUrl/api/open/common/account/registration-phase-1"; // for basic info
  static const registerPhase2 =
      "$baseUrl/api/open/common/account/registration-phase-2"; // for otp verification

//----------FORGET PASSORD URL
  static const forgetpassword1 =
      "$baseUrl/api/open/common/account/forget-password/step1";
  static const forgetpassword2 =
      "$baseUrl/api/open/common/account/forget-password/step2";

//----------  LOGIN URL

  static const login = "$baseUrl/api/open/student-and-teacher/login";

  //**notes */
  static const getAllNotes =
      "$baseUrl/api/open/common/book/class-books/get-all";
  static const getAllCourse = '$baseUrl/api/open/common/book/subject/get-all';

  // buy the course//
  static const buyCourse = "$baseUrl/api/student/book/add-to-sales-ledger";
  static const getPurchaseCourse =
      "$baseUrl/api/student/book/get-purchased-subjects";
  static const inquiryApi = "$baseUrl/api/open/common/sales/add-inquiry";

//**MCQ'S */

  static const getAllMcq = "$baseUrl/api/open/common/book/mcq/get-all";
  static const getPhysicalProduct =
      "$baseUrl/api/open/common/book/ecommerce/get-all";
}
