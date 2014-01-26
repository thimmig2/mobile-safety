@MobileSafety.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

	class Entities.Hazard extends Entities.Model

	class Entities.HazardsCollection extends Entities.Collection
		model: Entities.Hazard
		url: ->
			Routes.hazards_path()

	API =
		getHazardEntities: (cb) ->
			hazards = new Entities.HazardsCollection
			hazards.fetch
				success: ->
					cb(hazards)

	App.reqres.setHandler "hazard:entities", (cb) ->
		API.getHazardEntities cb