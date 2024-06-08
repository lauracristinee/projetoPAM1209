class Evento {
  // aqui eu dei o nome e o tipo de dao que ele recebe,
  String imgEvento;
  String eventoName;
  String eventoData;
  String eventoDescri;
  String eventoLocal;
  String siteUrl;
  bool favorito;
  String horario;

  Evento({
    required this.imgEvento,
    required this.eventoName,
    required this.eventoData,
    required this.eventoDescri,
    required this.eventoLocal,
    required this.siteUrl,
    required this.favorito,
    required this.horario,
  });
}

final List<Evento> eventos = [
  Evento(
    imgEvento: "/images/evento1.png",
    eventoName: "Anime Station",
    eventoData: "sábado, 17 de agosto 2024",
    eventoDescri:
        "Venha se juntar a nós na terceira edição do Anime Station! O local está em processo de definição, mas garantiremos que seja de fácil acesso para todos. Prepare-se para um dia repleto de diversão, com concursos de cosplay e kpop, bate-papo com cosplayers, sessões de karaoke, shows ao vivo, salas temáticas e muito mais. Não perca a oportunidade de se divertir conosco neste evento imperdível!",
    eventoLocal: "Local: Local a definir São Paulo, SP",
    siteUrl:
        "https://www.sympla.com.br/evento/anime-station-terceira-edicao/2400550?referrer=www.google.com",
    favorito: false,
    horario: "08:00 às 18:00",
  ),
  Evento(
    imgEvento: "/images/evento2.png",
    eventoName: "Osasco game fest",
    eventoData: "domingo, 28 de abril 2024",
    eventoDescri:
        "Evento GAMES destinado ao publico em geral que curte o universo nerd, pop & Geek (que engloba atrações de anime, mangá, cartoon, saraus. cosplay, K-pop, desenhos animados, cinema, literatura, música, HQs, Slam, Perifa Geek, Workshops, bate papo, Rpg, Bandas, Dublador e videogames), o evento contará com diversas atrações, além de diversas oficinas de artes. Teremos salas temáticas, expositores, desfiles de cosplayers , concurso k-pop, sorteios, espaço dos artistas, apresentações, gincanas e muito mais. O EVENTO TEM ENTRADA GRATUITA!",
    eventoLocal:
        "Local: Escola de Artes César Antonio Salvi Rua Tenente Avelar Píres de Azevedo, 360 Centro Osasco, SP",
    siteUrl:
        "https://www.sympla.com.br/evento/osasco-game-fest-2024/2429231?referrer=www.google.com",
    favorito: true,
    horario: "08:00 às 18:00",
  ),
  Evento(
    imgEvento: "/images/evento3.png",
    eventoName: "Anime friends 2024",
    eventoData: "domingo, 21 de julho 2024",
    eventoDescri:
        "Adquira seu lugar na caravana oficial para o Anime Friends 2024, organizado pela AnimaGeek. Esta oferta é válida para residentes das cidades de Itu, Indaiatuba, Porto Feliz e Sorocaba. O valor pago inclui o ingresso para o evento e o assento na caravana. Após efetuar o pagamento, envie o comprovante juntamente com a cidade desejada através do WhatsApp para Ricardo Machado, coordenador de caravanas, no número 15 9 9185 4362.",
    eventoLocal:
        "Local: Centro de Convenções - Distrito Anhembi Avenida Olavo Fontoura, 1209 Santana São Paulo, SP",
    siteUrl:
        "https://www.sympla.com.br/evento/caravana-anime-friends-2024-animageek/2339213?referrer=www.google.com",
    favorito: false,
    horario: "08:00 às 18:00",
  ),
  Evento(
    imgEvento: "/images/evento4.png",
    eventoName: "Anime Song Fest",
    eventoData: "sábado, 11 de maio 2024",
    eventoDescri:
        "Prepare-se para uma explosão de energia e emoção no Anime Song Fest, onde a magia dos animes ganha vida através da música! Com o show das bandas The Fist Bump, Kansei e Kaori, você será transportado para universos épicos e emocionantes de seus animes favoritos. A programação inclui apresentações ao vivo das três bandas, um concurso para eleger o melhor cosplay do festival, sorteios e premiações durante as apresentações. Você terá a chance de viver o sonho de seu personagem favorito, indo de cosplay e se juntando a nós nesse festival! Pedimos que os cosplayers evitem trajes muito volumosos para que todos possam aproveitar a vista e o festival sem obstáculos. É proibido o uso de Purpurina/Glitter, então por favor, deixe-os em casa. Além disso, o festival oferece uma seleção de bebidas deliciosas e hambúrgueres para acompanhar sua jornada musical. Lembre-se de que bebidas e alimentos não estão inclusos no valor do ingresso.",
    eventoLocal:
        "Local: Red Star Studios - Unidade Pinheiros 2 Rua Teodoro Sampaio, 512, Estúdio RedStar, Pinheiros São Paulo, SP",
    siteUrl:
        "https://www.sympla.com.br/evento/anime-song-fest/2413584?referrer=www.google.com",
    favorito: true,
    horario: "08:00 às 18:00",
  ),
  Evento(
    imgEvento: "/images/evento5.png",
    eventoName: "Anime Geek Darkness 2",
    eventoData: "domingo, 13 de outubro 2024",
    eventoDescri:
        "Anime Geek Darknees é um evento anual promovido pela PaladinoStudios, que acontece em outubro em celebração ao Halloween. O evento destaca uma variedade de cosplays inspirados no universo do terror, oferecendo uma atmosfera única e envolvente. Originário do Campinas Anime Geek, agora ele expande seu alcance para Piracicaba, São Paulo, proporcionando aos fãs uma experiência ainda mais emocionante e assustadora. Prepare-se para mergulhar em um mundo de fantasia sombria e diversão sinistra!",
    eventoLocal:
        "Local: Av. Dr. Cássio Pascoal Padovani, 3199 Avenida Doutor Cássio Pascoal Padovani, 3199 Parque Santa Cecilia Piracicaba, SP",
    siteUrl:
        "https://www.sympla.com.br/evento/anime-geek-darkness-2/2329017?referrer=www.google.com",
    favorito: true,
    horario: "08:00 às 18:00",
  ),
  Evento(
    imgEvento: "/images/evento6.png",
    eventoName: "Cosmo Anime Geek 6",
    eventoData: "domingo, 09 de junho 2024",
    eventoDescri:
        "Prepare-se para a terceira edição do Circuito Anime Geek, onde o Cosmo Anime Geek promete agitar a galera e fazer história. Com a presença de dois dubladores e a Banda Elísios garantindo a animação, o evento oferece diversas atrações para todos os fãs. Desde karaokê até competição de Kpop, passando por desfile e atuação cosplay, todos têm a chance de mostrar seus talentos e concorrer a prêmios incríveis. Os formulários de inscrição já estão disponíveis desde 22 de março. Não perca a oportunidade de participar deste evento imperdível, marcado para o dia 9 de junho, na Igreja Nossa Senhora Aparecida, em Cosmópolis-SP. A entrada é franca, mas pede-se a doação de 1kg de alimento não perecível.",
    eventoLocal:
        "Local: Cosmo Anime Geek Rua São Paulo, SN, AO LADO DA FEIRA MUNICIPAL DE DOMINGO, Jardim dos Scursonis Cosmópolis, SP",
    siteUrl:
        "https://www.sympla.com.br/evento/cosmo-anime-geek-6/2394077?referrer=www.google.com",
    favorito: false,
    horario: "08:00 às 18:00",
  ),
  Evento(
    imgEvento: "/images/evento7.png",
    eventoName: "Motor Geek Fest",
    eventoData: "domingo, 14 de julho 2024",
    eventoDescri:
        "Olá pessoal! Está chegando a hora de Cordeirópolis ter o seu tão esperado evento GEEK! Com a entrada sendo apenas 1 kg de alimento não perecível, a Prefeitura de Cordeirópolis em parceria com a PaladinoStudios estão preparando o Motor Geek Fest, dois dias repletos de diversão e entretenimento. Traga seu Cosplay e aproveite ao máximo o evento, que acontecerá ao lado do grandioso Motor Rock Fest, proporcionando uma experiência única com muito rock 'n' roll e motos imponentes de estrada. Com competições e atrações especiais, marque na sua agenda: 13 e 14 de Julho, das 11:00 às 19:00 horas. E atenção, neste ano de 2024, o evento fará parte do Circuito Anime Geek, sendo o quarto da linha de cinco eventos, valendo pontos para a premiação final em Dezembro.",
    eventoLocal:
        "Local: Salão Social Maria De Lourdes Arrais Rua Carlos Gomes, 78, Junto ao evento Motor Fest, Centro Cordeirópolis, SP",
    siteUrl:
        "https://www.sympla.com.br/evento/motor-geek-fest/2394163?referrer=www.google.com",
    favorito: true,
    horario: "08:00 às 18:00",
  ),
  Evento(
    imgEvento: "/images/evento8.png",
    eventoName: "Feira Geek Paulista",
    eventoData: "sábado, 13 de abril 2024",
    eventoDescri:
        "A primeira edição da Feira Geek na Avenida Paulista promete ser um encontro vibrante para fãs de todas as idades da cultura pop e geek. Hospedada no Club Homs, próximo ao metrô Brigadeiro, nos dias 13 e 14 de abril de 2024, o evento oferece uma ampla gama de atividades. Desde apresentações de bandas de K-pop até bate-papos com especialistas, concursos de cosplay, palestras sobre o universo geek e uma variedade de jogos e games. Destaque para o Painel JBC: Jiraiya, com a participação do roteirista Chris Tex e do desenhista Santtos, discutindo a produção do quadrinho original do Jiraiya, a ser lançado em 204 pela Editora JBC. No sábado, os visitantes poderão participar de um emocionante duelo de sabres de luz às 17h35, com batalhas que remetem a uma galáxia muito, muito distante. Em ambos os dias, às 18h, acontece o concorrido concurso cosplay, com prêmios em jogo. E para os entusiastas de arte e quadrinhos, haverá uma área especial de Artists Alley, onde artistas talentosos exibirão suas obras e habilidades. Prepare-se para mergulhar em um fim de semana repleto de entretenimento e diversão geek na movimentada Avenida Paulista.",
    eventoLocal:
        "Local: Club Homs Av. Paulista, 735, próximo ao metrô Brigadeiro. São Paulo-SP",
    siteUrl:
        "https://madeinjapan.com.br/agenda/evento/feira-geek-na-avenida-paulista/",
    favorito: true,
    horario: "08:00 às 18:00",
  ),
  Evento(
    imgEvento: "/images/evento9.png",
    eventoName: 'Nerd Experience',
    eventoData: 'sabádo, 21 de setembro 2024',
    eventoDescri:
        'Venha participar de momentos únicos e imersivos no Nerd Experience, o evento mais Nerd/Geek/Gamer de São Paulo! Feito de fã pra fã, venha curtir com a gente tudo de mais incrível dos universos da tecnologia, super-heróis, quadrinhos, videogames, filmes, séries, cosplay, animes e muito mais. Contaremos com presenças ilustres com Caito Mainier e muito mais.',
    eventoLocal: 'Local: Local a definir São Paulo, SP',
    siteUrl:
        'https://www.sympla.com.br/evento/nerd-experience-11-edicao-descubra-seu-poder/2492640?share_id=copiarlink',
    favorito: false,
    horario: "08:00 às 18:00",
  ),
  // Evento(
  //   imgEvento: '/images/evento10.png',
  //   eventoName: 'Games em Blockchain',
  //   eventoData: 'sabádo, 8 de junho 2024',
  //   eventoDescri: '',
  //   eventoLocal: 'Lecal: Local a definir São Paulo, SP',
  //   siteUrl: siteUrl,
  //   favorito: false)
];
