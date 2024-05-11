package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class JavaHWStepdefs {
    @Given("I convert {int} foot to centimeters")
    public void iConvertFootToCentimeters(int num1) {
        double num2 = num1 * 30.48;
        System.out.println(num1 + " feet is equal to " + num2 + " centimeters.");
    }

    @And("I convert {int} US gallon to liters")
    public void iConvertUSGallonToLiters(int gul1) {
        double lit1 = gul1 * 3.79;
        System.out.println(gul1 + " US gallons is equal to " + lit1 + " liters.");
    }

    @And("I convert {int} Celsius to Fahrenheit")
    public void iConvertCelsiusToFahrenheit(int celc1) {
        int far1 = (celc1 * 9 / 5) + 32;
        System.out.println(celc1 + " Celsius is equal to " + far1 + " Fahrenheit");
    }

    @Given("I got {int} percent on my test")
    public void iGotPercentOnMyTest(int per1) {
        if (per1 >= 90 && per1 <= 100) {
            System.out.println("You passed with Grade A");
        } else if (per1 >= 80 && per1 <= 89) {
            System.out.println("You passed with Grade B");
        } else if (per1 >= 70 && per1 <= 79) {
            System.out.println("You passed with Grade C");
        } else if (per1 >= 60 && per1 <= 69) {
            System.out.println("You passed with Grade D");
        } else if (per1 <= 59) {
            System.out.println("You passed with Grade F");
        }

    }

    @Given("Use a for loop to print out all elements")
    public void useAForLoopToPrintOutAllElements() {
        String[] week = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
        for (String day : week) {
//            System.out.println(day);
            System.out.print(day + " ");
        }
    }

    @Given("Summarize numbers in the array")
    public void summarizeNumbersInTheArray() {
        int[] numbers = {1, 8, 7, 6, 4, 2, 12, 13, 5, 4, 2, 10, 22};
        int sum = 0;

        for (int i = 0; i < numbers.length; i++) {
             sum = sum + numbers[i];
        }
        System.out.println("Sum: " + sum);
    }

    @Given("I check if number {int} is odd or even")
    public void iCheckIfNumberIsOddOrEven(int check1) {
        int num = 2;
        if (check1%num == 0){
            System.out.println("Number " + check1 + " is even");
        }else {
            System.out.println("Number " + check1 + " is odd");
        }
    }
    }

