import 'package:test/test.dart';
import 'package:test_case_writting/Calculator.dart';

  main(){
    Calculator calculator;
    //once in a program before test
    /*setUpAll((){
      prints("once before in a test");
    });*/

    // Every times runs before test
    setUp((){
      prints("before test");
       calculator = Calculator();
    });

    // Every times runs after test
    /*tearDown((){
      prints("after test");
    });*/
    //once in a program after test
    /*tearDownAll((){
      prints("once after test");
    });
*/
    group("add", (){
      test("method testing", (){
        final Calculator calculator = Calculator();
        expect(calculator.add(10, 10), 20);
      });

      test("the calculator return 10 when we give input 5 and 5", (){
        final Calculator calculator = Calculator();
        expect(calculator.add(5, 5), 10);
      });
    });

    group("sub", (){
      test("the calculator return 10 when we give input 30 and 20", (){
        expect(calculator.sub(30, 10), 20);
      });

      test("the calculator return 10 when we give input 40 and 30", (){
        expect(calculator.sub(40, 30), 10);
      });
    });

    test("Calculator return ?? when dividing by zero", (){
      expect(() => calculator.div0(40, 0), throwsArgumentError);
    });


    //Future type and should be async
    group("power of two", (){
      test("return 81 when input 9", () async{
        expect(await calculator.powerOfTwo(9),81);
      });
    });

    /*
    group("power of two", (){
      test("return 81 when input 9", () {
        expect(calculator.powerOfTwo(9),81);
      });
    });
    */
  }