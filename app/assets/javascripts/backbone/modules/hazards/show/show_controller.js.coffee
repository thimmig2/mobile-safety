@MobileSafety.module "HazardApp.Show", (Show, App, Backbone, Marionette, $, _) ->

	Show.Controller = 

		showHazards: ->
			App.request "hazard:entities", (hazards) =>
				hazardsView = @getHazardsView(hazards)
				@hazards = hazards

				hazardsView.on "itemview:show:hazard", (iv, hazard) ->
					App.vent.trigger "show:hazard", hazard.id

				App.mainRegion.show(hazardsView)

		showHazard: (id) ->
			hazard = @hazards.get(id)
			hazardView = @getHazardView(hazard)
			App.mainRegion.show(hazardView)

		getHazardView: (hazard) ->
			new Show.Hazard
				model: hazard

		getHazardsView: (hazards) ->
			new Show.Hazards
				collection: hazards

		getSidepanelView: (id) ->
			new Show.Sidepanel
				model: id