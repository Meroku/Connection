public class StringArrayTest {
    public static List<String> generateStringArray(Integer n) {
        List<String> back = new List<String>();
        for (Integer i = 0; i < n; i ++) {
            back.add('Test ' + i);
        }
        return back;
    }
}