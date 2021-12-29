import java.util.Scanner;

public class ProductService {

    public Product createProduct(){
        Scanner scanner=new Scanner(System.in);
        System.out.println("Nhập id của sản phẩm");
        int id=Integer.parseInt(scanner.nextLine());
        System.out.println("Nhập tên của sản phẩm");
        String name= scanner.nextLine();
        System.out.println("Nhập số lượng sản phẩm");
        int quantity=Integer.parseInt(scanner.nextLine());
        ProductUnit unit;
        String inputUnit;
        do {
            System.out.println("Nhập đơn vị tính của sản phẩm (gói/thùng/chiếc)");
            inputUnit= scanner.nextLine();
        }
        while (!(inputUnit.equalsIgnoreCase("gói"))&&!(inputUnit.equalsIgnoreCase("thùng"))&&!(inputUnit.equalsIgnoreCase("chiếc")));
        if (inputUnit.equalsIgnoreCase("gói")){
            unit=ProductUnit.gói;
        }
        else if (inputUnit.equalsIgnoreCase("thùng")){
            unit=ProductUnit.thùng;
        }
        else {
            unit=ProductUnit.chiếc;
        }

        System.out.println("Nhập giá mua sản phẩm");
        double purchasePrice=Double.parseDouble(scanner.nextLine());
        System.out.println("Nhập giá bán sản phẩm");
        double sellingPrice=Double.parseDouble(scanner.nextLine());
        System.out.println("Nhập số lượng bán");
        int sellingQty=Integer.parseInt(scanner.nextLine());

        Product newproduct=new Product(id,name,quantity,unit,purchasePrice,sellingPrice,sellingQty);
        return newproduct;
    }

    public Product[] addProduct(){
        Scanner scanner=new Scanner(System.in);
        System.out.println("Nhập số lượng sản phẩm cần theo dõi");
        int numberOfProduct= scanner.nextInt();
        Product[] products=new Product[numberOfProduct];
        for (int i=0;i<numberOfProduct;i++){
            products[i]=createProduct();

        }
        return products;
    }

    public double interest( double purchasePrice, double sellingPrice, int sellingQty){
        return (double) (sellingPrice-purchasePrice)*sellingQty;
    }

    public void print(Product[] products){
        for (Product i:products){
            System.out.println(i+" - "+interest(i.purchasePrice,i.sellingPrice,i.sellingQty));
        }
    }


}
