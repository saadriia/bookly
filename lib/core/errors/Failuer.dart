abstract class Failure     {
  
}

class ServerFAilure extends Failure {
  final String message;
  ServerFAilure(this.message);
}