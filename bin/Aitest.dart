class Test {
  void sum (int x, int y){
    print ("${x+y}");
  }
  String welc (){
    return "HEllo!";
  }

}

class sub implements Test{
  @override
  void sum(int x, int y) {
    print ("${x+y *2}");
  }

  @override
  String welc() {

    return "Welcome here!";
  }
}
class subtest extends sub {

  subtest():super();
  
}