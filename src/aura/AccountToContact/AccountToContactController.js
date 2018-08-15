({
    doInit : function(component, event, helper) {
        component.find("forceRecord").getNewRecord(
        "Account",
        "Customer",
        false,
        $A.getCallback(function() {
            var rec = component.get("v.accRecord");
            var error = component.get("v.recordError");
            if (error || (rec === null)) {
                console.log("Error initializing record template: " + error);
                return;
            }
        })
    );         
        component.find("forceRecord1").getNewRecord(
        "Contact",
        "Customer",
        false,
        $A.getCallback(function() {
            var rec = component.get("v.contRecord");
            var error = component.get("v.recordError");
            if (error || (rec === null)) {
                console.log("Error initializing record template: " + error);
                return;
            }
        })
    );
    },
    saveRecord: function(component, event, helper) {
        component.set("v.accRecord.Name", component.find('accName').get("v.value")); 
        component.set("v.accRecord.Phone", component.find('accPhone').get("v.value")); 
        component.set("v.accRecord.Type_of_bank_account__c", component.find('accType').get("v.value"));
        component.set("v.contRecord.LastName", component.find('accName').get("v.value"));
        component.set("v.contRecord.Phone", component.find('accPhone').get("v.value"));

        var IdToRedirect;
        var tempRec = component.find("forceRecord");
        tempRec.saveRecord($A.getCallback(function(result) {
            console.log(result.state);
    var resultsToast = $A.get("e.force:showToast");
    if (result.state === "SUCCESS") {
        resultsToast.setParams({
            "title": "Saved",
            "message": "The record was saved."
        });
        resultsToast.fire(); 
        IdToRedirect = result.recordId;
        console.log("Account save" + IdToRedirect);
        component.set("v.contRecord.AccountId", IdToRedirect );
                var tempRec1 = component.find("forceRecord1");
        tempRec1.saveRecord($A.getCallback(function(result) {
            console.log(result.state);
    var resultsToast = $A.get("e.force:showToast");
    if (result.state === "SUCCESS") {
        resultsToast.setParams({
            "title": "Saved",
            "message": "The record was saved."
        });
        resultsToast.fire(); 
        helper.navigateTo(component, IdToRedirect);
        
        console.log("Contact save" + IdToRedirect);
    }
}));
        console.log("Account save 2" + IdToRedirect);
        
    }}));
                // Contact details
                //
    }
})