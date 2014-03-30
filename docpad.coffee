pathUtil = require('path')

module.exports =
  templateData:
    site:
      url: "http://rsjs.org"
      googleanalytics: "UA-29193339-1"
      images:
        facebook: "http://rsjs.org/images/og-image.jpg"
    
    tryPartial: (partialName, paths, objs...) ->
      partialContainerRegex = /\[partial:([^\]]+)\]/g
      while paths.length
        result = @partial(pathUtil.join(paths..., partialName), objs...)
        return result if result.match(partialContainerRegex)
        paths.pop()
      @partial(partialName, objs...)
      


