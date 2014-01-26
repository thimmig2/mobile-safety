@MobileSafety.module "HazardApp", (HazardApp, App, Backbone, Marionette, $, _) ->

	class HazardApp.Router extends Marionette.AppRouter
		appRoutes:
			"hazard/:id": "showHazard"
			"hazards": "showHazards"

	API = 
		showHazard: (id) ->
			HazardApp.Show.Controller.showHazard(id)

		showHazards: ->
			HazardApp.Show.Controller.showHazards()

	App.vent.on "show:hazard", (id) ->
		App.navigate("hazard/#{id}", trigger: true)


	App.vent.on "show:hazards", ->
		App.navigate("hazards", trigger: true)

	App.addInitializer ->
		new HazardApp.Router
			controller: API