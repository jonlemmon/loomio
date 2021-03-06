Loomio.Views.Utils ||= {}

class Loomio.Views.Utils.Linkify extends Backbone.View

  initialize: ->
    @linkify()

  linkify: ->
    $(@el).each ->
      $(this).linkify({ 
        use: '*',
        handleLinks: (links)->
        	links.attr('target','_blank')
      })