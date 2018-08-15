public class NewCaseListController {
    public List<Case> getNewCases() {
        String sorter = 'New';
        List<Case> results = [
        SELECT Id, CaseNumber FROM Case WHERE Status='New'];
    return results;
    }
}