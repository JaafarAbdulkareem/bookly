const String _baseUrl = "https://www.googleapis.com/";
const String _bookUrl = "books/v1/volumes?";
const String _headBookQuery =
    "q=programming&filter=free-ebooks&printType=books";
const String _bodyBookQuery = "q=programming";
const String _similerBookQuery = "q=programming";
const String _searchBookQuery = "q=intitle:";

class ApiConstant {
  static const String headHomeUrl = _baseUrl + _bookUrl + _headBookQuery;
  static const String bodyHomeUrl = _baseUrl + _bookUrl + _bodyBookQuery;
  static const String similerHomeUrl = _baseUrl + _bookUrl + _similerBookQuery;
  static const String searchUrl = _baseUrl + _bookUrl + _searchBookQuery;
  static const String items = "items";
  static const String error = "error";
  static const String message = "message";
}
