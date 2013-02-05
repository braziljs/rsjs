(function ($) {

    window.locationmap = function () {
        var container = $('#map-canvas')
          , address   = container.attr('data-address')
          , options   = {
                zoom: 16
              , scrollwheel: false
              , mapTypeControl: false
              , labels: true
              , zoomControlOptions: {
                  position: google.maps.ControlPosition.TOP_RIGHT
                }
              , mapTypeId: google.maps.MapTypeId.ROADMAP
           }
        
        var map    = new google.maps.Map(container.get(0), options)
          , search = new google.maps.Geocoder()

        search.geocode({ address: address }, function (data) {
            var location = data[0].geometry.location

            new google.maps.Marker({
                map: map
              , position: location
            })
            map.setCenter(location)
        })
    }

})(Rye)