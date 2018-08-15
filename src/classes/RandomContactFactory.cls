public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer num, String lName) {
        List<Contact> cont = new List<Contact>();
        for(Integer i = 0; i < num; i++) {
            cont.add(new Contact(LastName=lName, FirstName='Test ' + (i + 1)));
        }
        return cont;
    }
}