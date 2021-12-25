import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        Scanner scanner=new Scanner(System.in);
        System.out.println("Nhập chuỗi cần chuẩn hóa");
        String myString= scanner.nextLine();

        String[] myArray=myString.split(" ");
        String newString="";
        for (int i=0;i< myArray.length;i++){
            newString=newString+myArray[i].substring(0,1).toUpperCase()+myArray[i].substring(1);
            newString=newString+" ";
        }
        System.out.println("\nChuỗi sau khi chuẩn hóa là");
        System.out.println(newString);

        System.out.println();


        System.out.println("Nhập chuỗi bất kì để kiểm tra tính đối xứng");
        String rdString= scanner.nextLine();
        String reservedString="";
        for (int i=rdString.length()-1;i>=0;i--){
            reservedString=reservedString+rdString.charAt(i);
        }
        System.out.println(reservedString);
        if (reservedString.equals(rdString)){
            System.out.println("Chuỗi vừa nhập có đối xứng");
        }
        else {
            System.out.println("Chuỗi vừa nhập không đối xứng");
        }
    }
}
