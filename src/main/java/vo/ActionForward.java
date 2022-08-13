package vo;
//포워딩 하는데 필요한 정보가 저장되는 클래스
public class ActionForward {
	private String url;
	private boolean redirect;
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public boolean isRedirect() {
		return redirect;
	}
	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}
}
