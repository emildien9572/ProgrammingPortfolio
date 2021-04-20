import java.io.IOException;
import java.io.File;
import java.io.PrintWriter;
import java.util.Scanner;

class Main {
  public static void main(String[] args) {
    System.out.println("Answer these thought-provoking questions:");
    Scanner sc = new Scanner(System.in);
    String[] arr = new String[10];

    System.out.println("What book had the most significant impact on your life?");
    arr[0] = sc.nextLine();
    System.out.println("Do you feel older or younger than your age?");
    arr[1] = sc.nextLine();
    System.out.println("What is the lie you tell yourself most often?");
    arr[2] = sc.nextLine();
    System.out.println("If you could choose to be any animal, what animal would you choose to be?");
    arr[3] = sc.nextLine();
    System.out.println("If you could spend a day talking to an animal, what animal would you choose and what would you want to learn from them?");
    arr[4] = sc.nextLine();
    System.out.println("If you didn’t have to work to make money, how would you spend your time? What would you do, or create?");
    arr[5] = sc.nextLine();
    System.out.println("What superpower would you choose if you were given the ability to develop one superpower?");
    arr[6] = sc.nextLine();
    System.out.println("How many internal organs can you name? List them.");
    arr[7] = sc.nextLine();
    System.out.println("Do you think you’d like living underwater if you suddenly became a mermaid, or would it be too scary?");
    arr[8] = sc.nextLine();
    System.out.println("If you could tell your younger self any one thing, what would it be?");
    arr[9] = sc.nextLine();

    try {
      File file = new File("demo.txt");
      if (!file.exists()) {
        file.createNewFile();
      }
      PrintWriter pw = new PrintWriter(file);
      pw.println(arr[0] + "\n" + arr[1] + "\n" + arr[2] + "\n" + arr[4] + "\n" + arr[5] + "\n" + arr[6] + "\n" + arr[7] + "\n" + arr[8] + "\n" + arr[9]);

      pw.close();

      System.out.println("Data successfully appended at the end of file");

    } catch (IOException ioe) {
      System.out.println("Exception occurred:");
      ioe.printStackTrace();
    }
  }
}