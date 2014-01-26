
@MobileSafety = do (Backbone, Marionette) ->

	App = new Marionette.Application

	App.rootRoute = Routes.hazards_path()

	App.addRegions
		mainRegion: "#main-region"
		footerRegion: "#footer-region"

	App.addInitializer ->
		App.module("FooterApp").start()

	App.on "initialize:after", (options) ->
		if Backbone.history
			Backbone.history.start()
			@navigate(@rootRoute, trigger: true) if @getCurrentRoute() is ""

	# return value stored in @MobileSafety
	App