package main.java.com.winetto;

import java.util.List;

public class WineList {

	private String returnCode;
	private String listVersion;
	private String listComment;
	private String listLocation;
	private String listState;
	private String listCurrencyCode;
	private List<PreWine> wines;
	
	public String getReturnCode() {
		return returnCode;
	}
	public void setReturnCode(String returnCode) {
		this.returnCode = returnCode;
	}
	public String getListVersion() {
		return listVersion;
	}
	public void setListVersion(String listVersion) {
		this.listVersion = listVersion;
	}
	public String getListComment() {
		return listComment;
	}
	public void setListComment(String listComment) {
		this.listComment = listComment;
	}
	public String getListLocation() {
		return listLocation;
	}
	public void setListLocation(String listLocation) {
		this.listLocation = listLocation;
	}
	public String getListState() {
		return listState;
	}
	public void setListState(String listState) {
		this.listState = listState;
	}
	public String getListCurrencyCode() {
		return listCurrencyCode;
	}
	public void setListCurrencyCode(String listCurrencyCode) {
		this.listCurrencyCode = listCurrencyCode;
	}
	public List<PreWine> getWines() {
		return wines;
	}
	public void setNames(List<PreWine> wines) {
		this.wines = wines;
	}
		
}
