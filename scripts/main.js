window.requestAnimationFrame = 
    window.webkitRequestAnimationFrame 
 || window.mozRequestAnimationFrame
 || window.msRequestAnimationFrame
 || window.oRequestAnimationFrame
 || function (fn) {
        return setTimeout(fn, 1000 / 60)
    }

;(function ($) {

    // Rye - Load Script
    // ===========
    Rye.loadScript = function (urls) {
        var script = $('script').eq(0)
        if (!Array.isArray(urls)) {
            urls = [urls]
        }
        urls.forEach(function (url) {
            var element = document.createElement('script')
            element.async = true
            element.src = '//' + url
            script.before(element)
        })
    }

    // External link
    // ===========
    $(document).on('click a[rel=external]', function (event) {
        event.preventDefault()
        window.open(this.href)
    })

    // Location map (async init)
    // ===========
    window.mapsAsyncInit = function () {
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

    // Rating widget (async init)
    // ===========
    window.RW_Async_Init = function () {
        RW.init({
            uid: 'A01EB0C8A2FD7BE845E5EFFAEDDDC5E5'
          , huid: '94876'
          , options: {
                advanced: {
                    nero: {
                        showDislike: false
                    }
                  , font: {
                        type: 'arial'
                    }
                  , text: {
                        vote: "voto"
                      , votes: "votos"
                    }
                }
              , theme: 'star_quartz'
              , type: 'star'
            }
        })
        RW.render()
    }

    // Scroll smooth
    // ===========
    ;(function () {
        function Move(id) {
            this.id   = id
            this.dest = this.getElementPageTopPosition(id)
            this.setAsRunner()            
            this.run()
        }
        Move.currentRunner = 0

        Move.prototype.setAsRunner = function () {
            this.runnerId = ++Move.currentRunner
        }
        Move.prototype.isCurrentRunner = function () {
            return this.runnerId == Move.currentRunner
        }

        Move.prototype.getElementPageTopPosition = function (element) {
            return $(element).get(0).getBoundingClientRect().top + window.pageYOffset
        }

        Move.prototype.run = function () {
            if (!this.isCurrentRunner()) {
                return
            }
            var current = window.pageYOffset - (window.pageYOffset - this.dest) / 5

            document.body.scrollTop = current
            document.documentElement.scrollTop = current

            if (this.previous != current) {
                this.previous = current
                window.requestAnimationFrame(this.run.bind(this))
            } else {
                document.location.hash = this.id
            }
        }

        $(document).on('click a[href*="#"]', function (event) {
            event.preventDefault()
            id = this.getAttribute('href')
            new Move(id)
        })
    })()

    // Scroll spy
    // ===========
    function ScrollSpy() {
        this.scrollLast = 0
        this.nav        = $('nav')
        this.active     = $()
    }

    ScrollSpy.prototype.init = function () {
        this.addEventListeners()
        this.cacheNavItem()
        this.updateSections()
    }

    ScrollSpy.prototype.cacheNavItem = function () {
        this.navItem = {}
        this.nav.find('a[href*="#"]').each(function (item) {
            item = $(item)
            this.navItem[item.attr('href').slice(1)] = item
        }.bind(this))
    }

    ScrollSpy.prototype.getNavItem = function (id) {
        return this.navItem[id] || $()
    }

    ScrollSpy.prototype.updateSections = function () {
        this.sections = this.getSections()
        this.menu()
    }

    ScrollSpy.prototype.getSections = function () {
        return $('section').elements.map(function (element) {
            return {
                id: element.id
                , offset: element.getBoundingClientRect().top + window.pageYOffset - 20
            }
        })
    }

    ScrollSpy.prototype.getActive = function () {
        var scroll = window.pageYOffset
          , section

        for (var i = 0, l = this.sections.length; i < l; i++) {
            this.sections[i].offset <= scroll && (section = this.sections[i])
        }
        return section && section.id
    }

    ScrollSpy.prototype.addEventListeners = function () {
        $(document)
            .on('scroll', this.onScroll.bind(this))
            .on('DOMContentLoaded', this.onLoad.bind(this))
        $(window).on('load', this.onLoad.bind(this))
    }

    ScrollSpy.prototype.onScroll = function (event) {
        if ((Date.now() - this.scrollLast) > 50) {
            this.scrollLast = Date.now()
            this.menu()
        }
    }

    ScrollSpy.prototype.onLoad = function (event) {
        this.updateSections();
    }

    ScrollSpy.prototype.menu = function () {
        var id = this.getActive()
          , item = this.getNavItem(id)

        this.active.removeClass('active')
        item.addClass('active')
        this.active = item

        this.nav.toggleClass('fixed', this.active.length)
    }

    new ScrollSpy().init()

})(Rye)