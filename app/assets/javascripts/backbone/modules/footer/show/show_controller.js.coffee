@MobileSafety.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->

	Show.Controller = 

		showFooter: ->
			footerView = @getFooterView()

			App.footerRegion.show footerView
			footerView.on "show:hazards", ->
				App.vent.trigger "show:hazards"

		getFooterView: ->
			new Show.Footer
