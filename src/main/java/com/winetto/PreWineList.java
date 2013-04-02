package main.java.com.winetto;

public class PreWineList {
	
	private WineList wineSearcher;

//	private PreWineList() {
//	    this.wineSearcher = preWineList.get("wine-searcher");
//	}
	
	public WineList getWineSearcher() {
		return wineSearcher;
	}

	public void setWineSearcher(WineList wineSearcher) {
		this.wineSearcher = wineSearcher;
	}

}