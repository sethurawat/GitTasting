@RESTResource(urlMapping='/LeadCreate/')
global class DemoApi {	
    @HTTPPost
    global static String doPost(){
        string fName,lname,comp;
        String fieldName,fieldValue;
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String jsonBody = req.requestBody.toString();
        JSONParser parser = JSON.createParser(jsonBody);
       // system.debug('Body is : '+arr);        
        //return 'hay Sethu';
        while(parser.nextToken()!=null){
            if(parser.getCurrentToken() != JSONToken.END_OBJECT){
                fieldName = parser.getCurrentName();
                fieldValue = parser.getText();
                if(fieldName == 'FirstName'){
                    fName = fieldValue;
                }
               else if(fieldName == 'LastName'){
                    lName = fieldValue;
                }
                else if(fieldName == 'Company'){
                    comp = fieldValue;
                }
            }
        }
        
        Lead ld = new Lead(firstName = fName,lastName = lname, Company = comp);
        insert ld;
         return ld.id ;
    }
}