
categories = {}

# Define the Configuration
docpadConfig = {
	growl: false

	collections:
		portfolio: ->
			@getCollection("html").findAllLive({relativeOutDirPath: 'portfolio'},[{order:1}]).on "add", (model) ->
                model.setMetaDefaults({layout: "main", type:"project"})
		
		blog: ->
			@getCollection("html").findAllLive({relativeOutDirPath: 'blog'},[{date:1}]).on "add", (model) ->
                model.setMetaDefaults({layout: "main", type:"post"})

	templateData:
		site:
			title: "DF"

		getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else "#{@site.title}"

		formatDate: (date,format='LLLL') -> return moment(date).format(format)

		truncate: (string, length) -> if string 
			return string.substring(0, length).split(" ").slice(0, -1).join(" ") + "..."

}

# Export the Configuration
module.exports = docpadConfig
 
