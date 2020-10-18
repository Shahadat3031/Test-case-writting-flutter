
class Calculator{
  double add(double a, double b) => a+b;

  double sub(double a, double b) =>  a-b;

  double mul(double a, double b) => a*b;

  double div(double a, double b) => a/b;

  double div0(double a, double b) {
    if(b==0)
      throw ArgumentError("You can't divided by 0");
    return a/b;
  }

  Future<double> powerOfTwo(double a) =>
      Future.delayed(const Duration(seconds: 1),() => a*a);

  Stream<double> pi() => Stream.fromIterable([3,3.1,3.14,3.141,3.1415]);

}