package com.prince.common.util;


import java.util.concurrent.ThreadLocalRandom;


public final class RandomUtil {

    private static char[] character;

    private static char[] numbers;

    private static final int DEFAULT_LENGTH = 6;

    private static final int MESSAGE_CODE_LENGTH = 4;

    private static final int THREE_TWO_LENGTH = 32;

    static {
        character = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};

        numbers = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    }

    public static String randomString(int length) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            sb.append(character[ThreadLocalRandom.current().nextInt(character.length)]);
        }
        return sb.toString();
    }

    public static String randomString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < DEFAULT_LENGTH; i++) {
            sb.append(character[ThreadLocalRandom.current().nextInt(character.length)]);
        }
        return sb.toString();
    }

    public static String randomMessageCode() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < MESSAGE_CODE_LENGTH; i++) {
            sb.append(numbers[ThreadLocalRandom.current().nextInt(numbers.length)]);
        }
        return sb.toString();
    }

    public static String randomNumber(int length) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            sb.append(numbers[ThreadLocalRandom.current().nextInt(numbers.length)]);
        }
        return sb.toString();
    }

    /**
     * Description : 随机生成prince号
     * @return {@link String}
     * @since 2022/7/15 16:50
     * @author Mu Prince
     */
    public static String randomprinceNumber() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 8; i++) {
            char number = numbers[ThreadLocalRandom.current().nextInt(numbers.length)];
            if (i == 0 && number == 48) {
                i = -1;
            } else {
                sb.append(number);
            }
        }
        return sb.toString();
    }

    public static String random32() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < THREE_TWO_LENGTH; i++) {
            sb.append(numbers[ThreadLocalRandom.current().nextInt(numbers.length)]);
        }
        return sb.toString();
    }

}
