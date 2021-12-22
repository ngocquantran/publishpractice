import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Scanner;

public class Main {
    public static void main(String[] args){


//    double x;
//    double y;
//    double z;
//
//        Scanner scanner=new Scanner(System.in);
//
//        System.out.println("Enter side x: ");
//        x=scanner.nextDouble();
//        System.out.println("Enter side y:");
//        y=scanner.nextDouble();
//
//        z = Math.sqrt((x*x)+(y*y));
//        System.out.println("The hypotenuse is: "+z);
//        scanner.close();



//        int sumEven=0;
//        for(int i=1; i<10; i++) {
//            if (i % 2 == 0) {
//                sumEven+=i;
//                System.out.println(i);
//            }
//
//        }
//
//        System.out.println(sumEven);



//        int soNguyenTo;
//        for (soNguyenTo=2; soNguyenTo<=10000; soNguyenTo++){
//            int count=0;
//            for (int i=2; i<soNguyenTo;i++){
//                if (soNguyenTo%i==0){
//                    count++;
//                    break;
//                }
//            }
//            if (count==0){
//                System.out.println(soNguyenTo);}
//
//        }
//
//
//        for (int number = 2; number <= 10000; number++) {
//            boolean isPrime = true; // Thay vì biến count, dùng biến này để kiểm tra số nguyên tố
//            for(int j = 2; j <= Math.sqrt(number); j++) {
//                if (number % j == 0) {
//                    // Chỉ cần một giá trị được tìm thấy trong khoảng này,
//                    // thì number không phải số nguyên tố
//                    isPrime = false;
//                    break; // Thoát ngay và luôn khỏi for (vòng for bên ngoài vẫn chạy)
//                }
//            }
//            if (isPrime) {
//                // Nếu isPrime còn giữ được sự "trong trắng" đến cùng thì đó là số nguyên tố
//                System.out.println(number);
//            }
//        }
//        int number;
//        for(number=2;number<100;number++){
//            int count=0;
//            for (int i=2; i<number;i++){
//                if (number%i==0){
//                    count++;
//                    break;
//                }
//
//            }
//            if (count>0){
//
//                System.out.println(number);
//            }
//        }
        LocalDate currentDate= LocalDate.now();
        System.out.println(currentDate);
        LocalDate nextDay=LocalDate.of(2021,12,22);
        System.out.println(nextDay);

        LocalTime currentTime=LocalTime.now();
        System.out.println(currentTime);

        LocalTime haiTiengSau=currentTime+LocalTime.of(2);
        System.out.println(haiTiengSau);




    }
}
