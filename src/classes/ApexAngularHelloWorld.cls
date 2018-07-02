public with sharing class ApexAngularHelloWorld {
	public String dataset{get;set;}
	public ApexAngularHelloWorld() {
		List<Account> accountList = [SELECT Id, Name FROM Account];
		List<DataSet> datasetList = new List<DataSet>();
		for(Account acc: accountList) {
			DataSet da = new DataSet();
			da.Id = acc.Id;
			da.Name = acc.Name;
			datasetList.add(da);
		}
		dataset = JSON.serialize(datasetList);
	}

	public class DataSet {
		public String Id {get;set;}
		public String Name {get;set;}
	}
}