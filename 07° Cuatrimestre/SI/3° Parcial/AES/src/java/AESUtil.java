/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author CA06-7
 */
public class AESUtil {
    import javax.crypto.Cipher;
    import javax.crypto.spec.SecretKeySpec;
    import java.util.Base64;
    
    public class AESUtil{
        private static final String ALGORITHM = "AES";
        private static final String KEY = "1234567890123456"; // 16 bytes = 128 bits
        
        public static String encrypt (String data) throws Excepetion {
            SecretKeySpec keySpec = new SecretKeySpec(KEY.getBytes(), ALGORITHM);
            
            Cipher cipher = Cipher.getInstance(ALGORITHM);
            cipher.init(Cipher.ENCRYPT_MODE, keySpec);
            
            byte [] encrypted = cipher.doFinal(data.getBytes("UTF-8"));
            return Base64.getEncoder().encodeToString(encrypted);
        }
    }
}
