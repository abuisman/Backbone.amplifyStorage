# LocalStorage API Amplify.store adapter for Backone.js
# this.author = "Achilleas Buisman"
#
# dependencies: 
#	underscore.js
#	backone.js
#	amplify.store (http://amplifyjs.com/api/store/)
#	backbone.localStorage (https://github.com/jeromegn/Backbone.localStorage)
#
_.extend Backbone.LocalStorage.prototype, {
	localStorage: ->
		return {
			length: amplify.store.length
			getItem: (name) ->
				return amplify.store(name)
			setItem: (name, value) ->
				return amplify.store(name, value)
			removeItem: (name) ->
				return amplify.store(name, null)
		}
}
