package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

import java.util.Locale;

public class JavaStepdefs {
    @Given("I print Hello World!")
    public void iPrintHelloWorld() {
        System.out.println("Hello World!");
    }

    @And("I print {string}")
    public void iPrint(String text) {
        System.out.println(text);
    }

    @Given("I print strings")
    public void iPrintStrings() {
        String fName = "Viktor";
        String lName = "Sku";
        String myOccupation = "Automation QA Engineer";
        myOccupation = "Software QA";


        System.out.println("Hello, my name is " + fName + " " + lName + ".");
        System.out.println("I work as an " + myOccupation + ".");
    }

    @When("I print {string} and {string}")
    public void iPrintStrings(String str1, String str2) {
        System.out.println(str1 + " " + str2);
        System.out.println(str1.toUpperCase() + " " + str2.toLowerCase());
        System.out.println(str1.charAt(0) + " " + str2.charAt(3));
        System.out.println(str1.length() + " " + str2.length());
        System.out.println(str1.charAt(0) + " " + str2.charAt(str2.length()-1));
        System.out.println(str1.equals(str2));
        System.out.println(str1.equalsIgnoreCase(str2));
        System.out.println(str2.contains("CUM"));

    }

    @Given("I work with numbers")
    public void iWorkWithNumbers() {
        int num1 = 9;
        int num2 = 3;
        int sum = num1 + num2;
        int diff = num1 - num2;
        int mod = num1%num2;

        System.out.println("The sum = " + sum);
        System.out.println("The diff = " + diff);
        System.out.println("The mod = " + mod);


    }

    @Given("I learn booleans")
    public void iLearnBooleans() {
        boolean x = true;
        System.out.println(" x = " +x);
    }

    @Given("I compare {int} and {int}")
    public void iCompareAnd(int num1, int num2) {
//        System.out.println(num1 > num2);
//        System.out.println(num1 < num2);
//        System.out.println(num1 == num2);
//        System.out.println(num1 != num2);

        if (num1>num2){
            System.out.println(num1 + " is greater than " + num2);
        }
        else if (num1<num2){
            System.out.println(num1 + " is less than " + num2);
        }
        else if (num1!=num2){
            System.out.println(num1 + " is not equal to " + num2);
        }
        else {
            System.out.println(num1 + " is equal to " + num2);
        }

    }

    @Given("I print url for {string}")
    public void iPrintUrl(String url1) {
        if(url1.equals("google")){
            System.out.println("https://www.google.com/");
        }
        else if(url1.equals("quote")){
            System.out.println("https://skryabin.com/market/quote.html");
        }
        else{
            System.out.println("Website " +url1+ " is not supported");
        }
    }

    @Given("I operate on arrays")
    public void iOperateOnArrays() {
        int [] numbers = {1, 5 , 96, 2, 45};
        String [] cars = {"Subaru" , "Mazda", "Tesla", "Mercedes", "Toyota"};
//        System.out.println("Best car: " + cars[1]);
//        cars[1] = "Honda";
//        System.out.println("Best car: " + cars[1]);
//        System.out.println(cars.length);
//        System.out.println(cars[cars.length-1]);
////        System.out.println(cars);

        for ( String element : cars) {
//            System.out.println(element);
            System.out.print(element + " ");
        }
//
        for(int counter = 0; counter <= cars.length-1; counter++){
            System.out.println(cars[counter]);
        }
        System.out.println();
    }
}
