module.exports =

  # These are variables will be accessible via our templates
  templateData:

    # Conference info
    conf:
      name: "RSJS"
      slogan: "Gaúcho com laço montado em rinoceronte"
      description: "O maior evento de Javascript do sul do país"
      date: "2013-03-23T09:00+03:00"
      price: ""
      venue: "Nós Coworking"
      venueLink: "http://www.noscoworking.com.br"
      mall: "Shopping Total"
      address: "Av. Cristóvão Colombo, 545, Floresta"
      city: "Porto Alegre"
      state: "Rio Grande do Sul"

    # Site info
    site:
      url: "http://rsjs.org"
      googleanalytics: "UA-29193339-1"
      images:
        facebook: "http://braziljs.org/img/fb-share.jpg"

    # Active sections on the website
    # to deactivate comment out with '#'
    # you can also change order here and it will reflect on page
    sections: [
      'about'
      'subscribe'
      'schedule'
      'location'
      'contact'
    ]

    footer: [
      'sponsors'
      'partners'
    ]

    # Labels which you can translate to other languages
    labels:
      about: "Sobre"
      subscribe: "Inscrições"
      schedule: "Programação"
      location: "Local"
      contact: "Contato"
      sponsors: "Patrocínio"
      partners: "Apoio"

    # The entire schedule
    schedule: [
      name: "Check-in"
      time: "9h40"
    ,
      name: "Felipe Nascimento"
      time: "09h00"
      photo: "http://secure.gravatar.com/avatar/929ed9958756c5c829a9eed068910646?s=100"
      company: "Terra"
      site: "http://felipenmoura.org"
      presentation:
        title: "A definir"
        description: ""
    ,
      name: "Call 4 Paperz"
      time: "10h00"
      site: "http://call4paperz.com/events/rsjs-2013"
      presentation:
          title: "Palestra"
    ,
      name: "Call 4 Paperz"
      time: "11h00"
      site: "http://call4paperz.com/events/rsjs-2013"
      presentation:
          title: "Palestra"
    ,
      name: "Almoço"
      time: "12h00"
    ,
      name: "Call 4 Paperz"
      time: "13h50"
      site: "http://call4paperz.com/events/rsjs-2013"
      presentation:
          title: "Palestra"
    ,
      name: "Jean Carlo Emer"
      time: "14h50"
      photo: "http://secure.gravatar.com/avatar/c5df370a883b65279af5a7ca94a5eed7?s=100"
      company: "Code Miner 42"
      site: "http://jcemer.com"
      presentation:
        title: "O Javascript dos novos tempos"
        description: ""
    ,
      name: "Coffee-break"
      time: "15h50"
    ,
      name: "Jaydson Gomes"
      time: "16h15"
      photo: "http://secure.gravatar.com/avatar/572696200604e59baa59ee90d61f7d02?s=100"
      company: "Terra"
      site: "http://jaydson.org"
      presentation:
        title: "A definir"
        description: ""
    ,
      name: "Call 4 Paperz"
      time: "17h15"
      site: "http://call4paperz.com/events/rsjs-2013"
      presentation:
          title: "Palestra"
    ,
      name: "Encerramento"
      time: "18h15"
    ]

    # List of Sponsors
    sponsors: [
      name: "Grifo"
      logo: "sponsors/grifo.png"
      url: "http://gri.fo"
    ]

    # List of Partners
    partners: [
      name: "BrazilJS"
      logo: "partners/braziljs.png"
      url: "http://braziljs.org"
    ]
