
public class Bmi {
    public static void main(String[] args) {

        method1();


        double bmi2=method2();
        System.out.println("Cách 2: Kiểu trả về void");
        System.out.println("Chỉ số bmi của bạn: "+bmi2+"\n");


        double chieucao=1.68;
        double cannang=60.5;
        double bmi3=method3(chieucao,cannang);
        System.out.println("Cách 3: Kiểu trả về void");
        System.out.println("Chỉ số bmi của bạn: "+bmi3+"\n");



    }
    //Phương thức BMI có kiểu trả về là void
    public static void method1(){
        double chieucao=1.68;
        double cannang=60.5;
        double bmi1=cannang/(chieucao*chieucao);
        System.out.println("Cách 1: Kiểu trả về void");
        System.out.println("Chiều cao: "+chieucao);
        System.out.println("Cân nặng: "+cannang);

        System.out.println("Chỉ số bmi của bạn: "+bmi1+"\n");

    }

     //Phương thức BMI có kiểu trả về là double

     public static double method2(){
         double chieucao=1.68;
         double cannang=60.5;
         return cannang/(chieucao*chieucao);



    }
    // Phương thức BMI có kiểu trả về là double và có truyền tham số
    public static double method3(double height, double weight){
        return weight/(height*height);

    }

}
