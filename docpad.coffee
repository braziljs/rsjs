module.exports =

  # These are variables will be accessible via our templates
  templateData:

    # Conference info
    conf:
      name: "RSJS"
      slogan: "Gaúcho com laço montado em rinoceronte"
      description: "Segunda edição do maior evento de Javascript do sul do país."
      date: "2013-03-23T09:00+03:00"
      price: "R$ 65,00"
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
        facebook: "http://rsjs.org/images/og-image.jpg"

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
      time: "08h30"
    ,
      name: "Caio Gondim"
      time: "09h00"
      photo: "http://f.cl.ly/items/00362R173j0y2G203b0Q/Image%202013.02.28%2011:41:42.png"
      company: "Globo.com"
      company_site: "http://globo.com"
      site: "http://caiogondim.com"
      presentation:
        title: "Dissecando sua aplicação com Chrome Dev Tools"
        description: "Vamos abrir sua <b>app</b> ao meio e analisar de forma minunciosa toda sua <b>anatomia</b>."
    ,
      name: "Rafael Specht da Silva"
      time: "10h00"
      photo: "http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/2/000/0d3/27e/36126d3.jpg"
      company: "Grupo RBS"
      company_site: "http://rbs.com.br"
      presentation:
        title: "Desenvolvimento orientado a testes com Jasmine"
        description: "Muita gente diz que Javascript é bobo, feio, não tem padronização e é a ruína de sistemas complexos. Quer ajudá-las a mudar de opinião? Testar pode ser um bom começo! <b>Testes são essenciais</b> para assegurar a integridade do seu trabalho, curar a síndrome do medo de manutenção em código legado e permitir que você durma mais tranquilo. Saiba como usar <b>Jasmine</b>, criar mocks das Views e testar o DOM"
    ,
      name: "Felipe Nascimento"
      time: "11h00"
      photo: "http://secure.gravatar.com/avatar/929ed9958756c5c829a9eed068910646?s=100"
      company: "Terra"
      company_site: "http://terra.com.br"
      site: "http://felipenmoura.org"
      presentation:
        title: "A interface web"
        description: "Uma <b>interface</b> é aquele elemento pelo qual atingimos algum objetivo. A forma como interagimos com o mundo é rica em interfaces, os elevadores, por exemplo, são interfaces que utilizamos para chegar em um andar mais alto, tal como as escadas. Como se vê, há interfaces melhores que outras.<br> Estamos em um momento em que esta enorme interface que é a <b>web</b> está evoluindo e podemos usar as novas tecnologias para isto. Vamos abordar como construir interfaces diferenciadas com <b>Canvas</b>, <b>SVG</b>, <b>CSS3</b>, <b>HTML5</b>, <b>video</b> e <b>WebGL</b>, utilizando de efeitos interessantes e animações, mas sempre lembrando de acessibilidade e performance!"
    ,
      name: "Almoço"
      time: "12h00"
    ,
      name: "Gabriel Zigolis"
      time: "13h30"
      photo: "http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/4/000/159/235/15129ec.jpg"
      company: "Grupo RBS"
      company_site: "http://rbs.com.br"
      presentation:
        title: "jQuery Mobile"
        description: "O <b>jQuery Mobile</b> é uma ótima alternativa para o desenvolvimento multiplataforma de Mobile Devices. Tendo como base o popular e poderoso jQuery e o jQuery UI, trabalharemos com esse produtivo framework, utilizando desde simples recursos à complexas interações com os devices, além de diversos <b>cases de sucesso</b> implementados."
    ,
      name: "Jean Carlo Emer"
      time: "14h30"
      photo: "http://secure.gravatar.com/avatar/c5df370a883b65279af5a7ca94a5eed7?s=100"
      company: "Codeminer 42"
      company_site: "http://codeminer42.com"
      site: "http://jcemer.com"
      presentation:
        title: "O Javascript dos novos tempos"
        description: "Uma palestra para aqueles que querem adentrar o universo das bibliotecas e frameworks <b>open source</b>.<br>Guia para entender código Javascript baseado em padrões e se jogar no <b>Node.js</b> e seu gerenciador de pacotes."
    ,
      name: "Ricardo Tomasi"
      time: "15h30"
      photo: "http://secure.gravatar.com/avatar/47923b1f334d8e3f7a00506ac3c7a636?s=100"
      site: "http://ricardo.cc"
      presentation:
        title: "Construindo aplicações web com Backbone e node.js"
        description: "Descubra como utilizar Backbone.js para criar aplicações <b>client-side</b> e implementar um <b>backend</b> em node. Conheça o padrão MV*, event emitters, delegação de eventos e APIs REST/JSON, e boas práticas relacionadas a <b>backbone</b> e <b>underscore.js</b>"
    ,
      name: "Coffee-break"
      time: "16h30"
    ,
      name: "Jaydson Gomes"
      time: "17h00"
      photo: "http://secure.gravatar.com/avatar/572696200604e59baa59ee90d61f7d02?s=100"
      company: "Terra"
      company_site: "http://terra.com.br"
      site: "http://jaydson.org"
      presentation:
        title: "JavaScript everywhere"
        description: "Ano: 2013. A linguagem JavaScript se espalhou como vírus. A humanidade está infectada. Não existe possibilidade remota de cura. O JavaScript está em <b>todos os lugares</b>. PCs, servidores, celulares, robôs, espaçonaves, geladeiras, torradeiras e onde você menos imagina."
    ,
      name: "Almir Filho"
      time: "18h00"
      photo: "http://secure.gravatar.com/avatar/7eacbf96fbde52dfe00cc77b225804d9?s=100"
      company: "Globo"
      company_site: "http://globo.com"
      site: "http://almirfilho.com"
      presentation:
        title: "Web Audio Hero"
        description: "Desvendaremos esta nova API de alto nível para processamento e sintetização de audio em aplicações web: <b>Web Audio API</b> – que nos permitirá quebrar o silêncio da web sem limitações."
    ,
      name: "Encerramento"
      time: "19h00"
    ]

    # List of Sponsors
    sponsors: [
      name: "Grifo"
      logo: "sponsors/grifo.png"
      url: "http://gri.fo"
    ,
      name: "Grupo RBS"
      logo: "sponsors/rbs.png"
      url: "http://www.gruporbs.com.br"
    ]

    # List of Partners
    partners: [
      name: "BrazilJS"
      logo: "partners/braziljs.png"
      url: "http://braziljs.org"
    ,
      name: "Globo.com"
      logo: "partners/globocom.png"
      url: "http://globo.com"
    ,
      name: "Eventick"
      logo: "partners/eventick.png"
      url: "http://eventick.com.br"
    ]
