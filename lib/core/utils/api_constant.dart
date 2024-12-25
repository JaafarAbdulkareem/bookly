const String _baseUrl = "https://www.googleapis.com/";
const String _bookUrl = "books/v1/volumes?";
const String _headBookQuery = "q=programming&&filter=free-ebooks";
const String _bodyBookQuery = "q=programming";

class ApiConstant {
  static const String headHomeUrl = _baseUrl + _bookUrl + _headBookQuery;
  static const String bodyHomeUrl = _baseUrl + _bookUrl + _bodyBookQuery;
  static const String items = "items";
  static const String error = "error";
  static const String message = "message";
}
 
