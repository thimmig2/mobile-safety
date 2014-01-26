@MobileSafety.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->

	class Show.Footer extends Marionette.ItemView
		template: "footer/show/templates/footer"
		events:
			"click #hazards-button": ->
				@trigger "show:hazards"