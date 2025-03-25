package Helpers;

import java.util.Random;

class PromoCodeGenerator {

    public static String generateValidPromoCode(int _discount) {

        Random random = new Random();
        StringBuilder code = new StringBuilder();

        // Next two digits: Random characters
        for (int i = 0; i < 2; i++) {
            code.append((char) (random.nextInt(26) + 'A')); // Uppercase letters
        }
        code.append("-");

        // Next three digits: Random characters
        for (int i = 0; i < 3; i++) {
            code.append((char) (random.nextInt(26) + 'A')); // Uppercase letters
        }
        code.append("-");

        // Next two digits: Random numbers
        int num1 = random.nextInt(10);
        int num2 = random.nextInt(10);
        code.append(num1);
        code.append(num2);

        // Calculate and append check digit
        int checkDigit = (_discount + num1 + num2) % 10;
        code.append(checkDigit);

        return code.toString();

    }

}