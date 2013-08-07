class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
  	@window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @mainViewController = MainViewController.alloc.initWithNibName('MainViewController', bundle:nil)
    @window.rootViewController = @mainViewController 
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible
=begin   
 	alert = UIAlertView.new
    alert.message = "Hello World!"
    alert.show
=end

	true
  end
end
