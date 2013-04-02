package main.java.com.winetto;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;


public class SearchServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// Checking for connection to the internet
    public static boolean isInternetReachable()
    {
        try {
            // Choose an URL of a known source
            URL url = new URL("http://www.google.com");

            // Open a connection to that source
            HttpURLConnection urlConnect = (HttpURLConnection)url.openConnection();

            // Trying to retrieve data of the source
            urlConnect.getContent();

        } catch (UnknownHostException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        }
        catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        }
        return true;
    }
	
	/**
	 * Read a URL returning an object and transform it into a String.
	 * 
	 * @param urlString
	 * @return String with the external object
	 * @throws Exception
	 */
	private static String readUrl(String urlString) throws Exception {
	    BufferedReader reader = null;
	    try {
	        URL url = new URL(urlString);
	        reader = new BufferedReader(new InputStreamReader(url.openStream()));
	        StringBuffer buffer = new StringBuffer();
	        int read;
	        char[] chars = new char[1024];
	        while ((read = reader.read(chars)) != -1)
	            buffer.append(chars, 0, read); 

	        return buffer.toString();
	    } finally {
	        if (reader != null)
	            reader.close();
	    }
	}
	
	
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
		try {
			
			if (isInternetReachable()) {
		
				// Defining API url parameters
				String urlHTTPinit = "http://api.wine-searcher.com/wine-select-api.lml?";
				String urlHTTParamSeparator = "&";
				String urlHTTParamAssignation = "=";
				
				String paramKey = "Xkey";
				String paramVersion = "Xversion";
				String paramWinename = "Xwinename";
				String paramWidesearch = "Xwidesearch";
				String paramKeyword_mode = "Xkeyword_mode";
				String paramCurrencycode = "Xcurrencycode";
				String paramVintage = "Xvintage";
				String paramLocation = "Xlocation";
				String paramAutoexpand = "Xautoexpand";
				String paramFormat = "Xformat";
				
				String key = "artrxx481761";
				String version = "5";
				String winename = req.getParameter("search_wine");
				String widesearch = "Y";
				String keyword_mode = "A"; // X
				String currencycode = "EUR";
				String vintage = req.getParameter("search_vintage");
				String location = "spain";
				String autoexpand = "Y";
				String format = "J";
				
				// Composing dynamic URL to make the API call
				String apiURL = urlHTTPinit;
				
				apiURL +=  paramKey + urlHTTParamAssignation + key;
				apiURL +=  urlHTTParamSeparator + paramVersion + urlHTTParamAssignation + version;
				
				if (req.getParameterMap().containsKey("search_wine")) 
					apiURL +=  urlHTTParamSeparator + paramWinename + urlHTTParamAssignation + winename;
				
				apiURL +=  urlHTTParamSeparator + paramWidesearch + urlHTTParamAssignation + widesearch;
				apiURL +=  urlHTTParamSeparator + paramKeyword_mode + urlHTTParamAssignation + keyword_mode;
				apiURL +=  urlHTTParamSeparator + paramCurrencycode + urlHTTParamAssignation + currencycode;
				
				if (req.getParameterMap().containsKey("search_vintage")) 
					apiURL +=  urlHTTParamSeparator + paramVintage + urlHTTParamAssignation + vintage;
				
				apiURL +=  urlHTTParamSeparator + paramLocation + urlHTTParamAssignation + location;		
				apiURL +=  urlHTTParamSeparator + paramAutoexpand + urlHTTParamAssignation + autoexpand;		
				apiURL +=  urlHTTParamSeparator + paramFormat + urlHTTParamAssignation + format;
				
				apiURL = apiURL.replace(' ', '+');
				
				// DEVTime: Printing results
				//System.out.println(apiURL);
		
				// Translating Json Object from API URL to String
				String jsonString = "";		
				try {
					jsonString = readUrl(apiURL);
					
					// DEVTime: Printing results
					//System.out.println(jsonString);
					
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				// Translating Json Object (String) to Json Object (GSON lib)
				GsonBuilder gsonBuilder = new GsonBuilder();
				gsonBuilder.setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_DASHES);
			    Gson gson = gsonBuilder.disableHtmlEscaping().create();
			    
			    Type preWineListType = new TypeToken<PreWineList>(){}.getType();
			    PreWineList preWineList = gson.fromJson(jsonString, preWineListType);
			    
			    // Another way could be:
				//PreWineList preWineList = gson.fromJson(jsonString, PreWineList.class);		
				
			    // DEVTime: Printing results
				//System.out.println("json test String: " + new Gson().toJson(preWineList));
				
				// Get Return Code for analyze response state
				String returnCode = preWineList.getWineSearcher().getReturnCode();
				req.setAttribute("returnCode", returnCode);
				
				if (returnCode.equals("0")) {
					
					// Print List Wine
					List<PreWine> listPreWine = preWineList.getWineSearcher().getWines();
					List<Wine> listWine = new ArrayList<Wine>();
					if (listPreWine != null) {			
						for (int i = 0; i < listPreWine.size(); i++) {
							listWine.add(listPreWine.get(i).getWine());
						}
					} else {
						// If Wine List is empty, we force an error to fill every input
						req.setAttribute("returnCode", "6");
					}
					req.setAttribute("data", listWine);
					req.setAttribute("saved", listWine);
					
				}
				
			} else {
				// If internet is no reachable, a message is returned to the view
				req.setAttribute("returnCode", "7");				
			}
			
		} catch (Exception e) {
			req.setAttribute("returnCode", "99");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// Return control to View
        req.getRequestDispatcher("/index.jsp").forward(req, resp);

    }
    
}
