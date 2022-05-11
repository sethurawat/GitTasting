public class testCollections {
    public testCollections(){ 
        Map<String,Map<String,List<String>>> coutryStateDistricsMap = new Map<String,Map<String,List<String>>>();
        List<String> districsList = new List<String>();
        districsList.add('Ajmer');
        districsList.add('Jaipur');
        
        List<String> mpDistricsList = new List<String>();
        mpDistricsList.add('Sehore');
        mpDistricsList.add('Khandwa');
        
        Map<String,List<String>> stateMap = new Map<String,List<String>>();
        stateMap.put('Rajasthan',districsList);
        stateMap.put('Mp',mpDistricsList);
        coutryStateDistricsMap.put('India',stateMap);
        System.debug(coutryStateDistricsMap);
    }
}