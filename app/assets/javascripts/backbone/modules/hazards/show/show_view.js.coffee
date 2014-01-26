@MobileSafety.module "HazardApp.Show", (Show, App, Backbone, Marionette, $, _) ->

	class Show.Sidepanel extends Marionette.ItemView
		template: "hazards/show/templates/Sidepanel"

	class Show.Hazard extends Marionette.ItemView
		template: "hazards/show/templates/hazard"

	class Show.HazardListItem extends Marionette.ItemView
		template: "hazards/show/templates/_hazard"
		tagName: "tr"
		events:
			"click": -> 
				@trigger "show:hazard", @model

	class Show.Hazards extends Marionette.CompositeView
		template: "hazards/show/templates/hazards"
		itemView: Show.HazardListItem
		itemViewContainer: "tbody"



