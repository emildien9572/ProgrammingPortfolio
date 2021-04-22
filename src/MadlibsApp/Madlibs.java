import java.util.Scanner;

class Madlibs {
  public static void main(String[] args) {
    String[] arr;
    arr = new String[17];
    System.out.println("Welcome to Madlibs! Here you will provide various words and phrases to fill in a story.");
    System.out.print("Please type an adjective: ");
    Scanner sc = new Scanner(System.in);
    arr[0] = sc.nextLine();

    System.out.print("Please type a noun: ");
    arr[1] = sc.nextLine();

    System.out.print("Please type an adjective: ");
    arr[2] = sc.nextLine();

    System.out.print("Please type a plural noun: ");
    arr[3] = sc.nextLine();

    System.out.print("Please type an adverb: ");
    arr[4] = sc.nextLine();

    System.out.print("Please type a verb ending in 'ing': ");
    arr[5] = sc.nextLine();

    System.out.print("Please type a plural noun: ");
    arr[6] = sc.nextLine();

    System.out.print("Please type an adjective: ");
    arr[7] = sc.nextLine();

    System.out.print("Please type a plural noun: ");
    arr[8] = sc.nextLine();

    System.out.print("Please type a random name: ");
    arr[9] = sc.nextLine();

    System.out.print("Please type an adjective: ");
    arr[10] = sc.nextLine();

    System.out.print("Please type a number: ");
    arr[11] = sc.nextLine();

    System.out.print("Please type a random name: ");
    arr[12] = sc.nextLine();

    System.out.print("Please type a random name: ");
    arr[13] = sc.nextLine();

    System.out.print("Please type a random name: ");
    arr[14] = sc.nextLine();

    System.out.print("Please type a random name: ");
    arr[15] = sc.nextLine();

    System.out.print("Please type a plural noun: ");
    arr[16] = sc.nextLine();

    System.out.println("* * *| When we look up into the sky on a/an " + arr[0] + " summer night, we see millions of tiny spots of light.\n_____|________________________________________________________________________________________________________ \n* * *| Each one represents a/an " + arr[1] + " which is the center of a/an " + arr[2] + " solar system with dozens of " + arr[3] + " \n_____|________________________________________________________________________________________________________ \n* * *| revolving " + arr[4] + " around a distant sun. Sometimes theses suns expand and begin " + arr[5] + " their \n_____|________________________________________________________________________________________________________ \n* * *| neighbors. Soon they will become so big, they will turn into " + arr[6] + ". Eventually they \n_____|________________________________________________________________________________________________________ \n* * *| subside and become " + arr[7] + " giants or perhaps black " + arr[8] + ". Our own planet, which we call " + arr[9] + ", \n_____|________________________________________________________________________________________________________ \n* * *| circles around our " + arr[10] + " sun " + arr[11] + " times every year. There are eight other planets in our \n_____|________________________________________________________________________________________________________ \n* * *| solar system. They are named " + arr[12] + ", " + arr[13] + ", " + arr[14] + ", " + arr[15] + ", Uranus, Jupiter, \n_____|________________________________________________________________________________________________________ \n* * *| and Mars. Scientists who study these planets are called " + arr[16] + ".");
  }
}