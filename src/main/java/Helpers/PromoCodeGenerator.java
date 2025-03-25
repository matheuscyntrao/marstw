import java.util.Random;

public class PromoCodeGenerator {

    public static String generateValidPromoCode() {
        Random random = new Random();
        StringBuilder code = new StringBuilder();

        // First digit: Discount percentage (2-9)
        int discount = random.nextInt(8) + 2;
        code.append(discount);

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
        int checkDigit = (discount + num1 + num2) % 10;
        code.append(checkDigit);

        return code.toString();
    }

    public static void main(String[] args) {
        String validCode = generateValidPromoCode();
        System.out.println("Generated Valid Promo Code: " + validCode);
    }
}