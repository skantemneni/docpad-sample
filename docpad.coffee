# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
    port: 9778
}

docpadConfig = {
    collections:
        pages: ->
            @getCollection("html").findAllLive({isPage:true},[{order:1}])

    templateData:
        site:
            title: "RF Website"

        getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
}

# Export the DocPad Configuration
module.exports = docpadConfig