package  {
	
	public class CustomURLNavigator {

		public var url:String;
		public var target:String;
		
		function CustomURLNavigator(u:String, t:String="_blank")
		{
			url = u;
			target = t;
		}
		
		public function callLink(e:Event):void
		{
			var r:URLRequest = new URLRequest(url);
			navigateToURL(r, target);
		}	
	}
	
}
