//
//  Filmes.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/16.
//

import Foundation

struct Filmes {
    
    static let oCorpoDeJennifer = Filme(nome: "O Corpo de Jennifer", poster: "oCorpoDeJennifer", descricao: "Ao ser possuída por um demônio, a estudante Jennifer se torna muito brava com os rapazes que nunca a deram uma chance. Enquanto a maldosa Jennifer satisfaz seu apetite com carne humana de meninos da escola, sua amiga nerd Needy descobre o que está acontecendo e promete colocar um fim na carnificina.", anoDeLancamento: 2010, adulto: true, infantil: false)
    
    static let it = Filme(nome: "IT", poster: "it", descricao: "Um grupo de crianças se une para investigar o misterioso desaparecimento de vários jovens em sua cidade. Eles descobrem que o culpado é Pennywise, um palhaço cruel que se alimenta de seus medos e cuja violência teve origem há vários séculos.", anoDeLancamento: 2017, adulto: true, infantil: false)
    
    static let semSaida = Filme(nome: "#Semsaída", poster: "semSaida", descricao: "Uma personalidade da mídia social viaja com os amigos para Moscou para produzir novos conteúdos. Sempre ultrapassando os limites e atendendo a um público crescente, eles entram em um mundo frio de mistério e perigo ao encararem um escape room.", anoDeLancamento: 2020, adulto: false, infantil: true)
    
    static let dracula = Filme(nome: "Drácula: A História Desconhecida", poster: "dracula", descricao: "Os habitantes da Transilvânia sempre travaram batalhas épicas contra o Império Otomano até que foi feito um acordo no qual o rei local aceitou entregar centenas de crianças, dentre elas o filho de Vlad. Após dez anos, o rei turco exige mais crianças, só que, dessa vez, Vlad, agora nomeado príncipe, recusa-se a entregá-las, dando início a uma nova guerra. Mesmo sendo famoso por sua ferocidade nas batalhas, Vlad vai atrás de um ser das trevas para ganhar poderes sobre-humanos.", anoDeLancamento: 2014, adulto: false, infantil: true)
    
    static let sweenyTodd = Filme(nome: "Sweeney Todd: O Barbeiro Demoníaco da Rua Fleet", poster: "sweeneyTodd", descricao: "Benjamin Barker passou 15 anos afastado de Londres após ser obrigado a deixar sua esposa e sua filha. Ele retorna à cidade como Sweeney Todd e decide ir à sua antiga barbearia, que agora é uma loja de fachada para vender as tortas feitas pela sra. Lovett. Com seu apoio, Todd volta a trabalhar como barbeiro na sala acima da loja. Porém o grande objetivo de Todd é se vingar do juiz Turpin, que o enviou para a Austrália sob falsas acusações para que pudesse roubar sua mulher Lucy e sua filha.", anoDeLancamento: 2007, adulto: false, infantil: true)
    
    static let asBruxasdeRoald = Filme(nome: "As Bruxas de Roald Dahl", poster: "convencaoDasBruxas", descricao: "Em 1967, um jovem órfão vai morar com sua adorável avó na cidade de Demopolis, no interior do estado do Alabama. Lá, o garoto e sua avó se deparam com glamorosas, porém diabólicas bruxas, e ela decide fugir, levando o menino para um resort costeiro. Porém, ao chegarem lá, eles descobrem que uma grande reunião, com bruxas de todo o mundo, está acontecendo no local, e elas planejam transformar todas as crianças do mundo em ratos.", anoDeLancamento: 2020, adulto: false, infantil: true)
    
    static let crimson = Filme(nome: "Crimson Peak: A Colina Vermelha", poster: "crimsonpeak", descricao: "Edith se casa com o sedutor Sir Thomas Sharpe e vai morar em uma remota mansão gótica. Lá, também vive a misteriosa Lady Lucille, irmã de Thomas. A casa é assombrada e Edith decide investigar as aparições fantasmagóricas. À medida que se aproxima da verdade, a jovem percebe que os verdadeiros monstros são feitos de carne e osso.", anoDeLancamento: 2015, adulto: true, infantil: false)
    
    static let aRaparigaDoCapuzVermelho = Filme(nome: "A Rapariga do Capuz Vermelho", poster: "aGarotaDaCapaVermelha", descricao: "Valerie é uma jovem que vive em um vilarejo aterrorizado por um lobisomem. Ela é apaixonada por Peter, embora seus pais insistam que ela case com Henry, filho de uma família rica do local. Diante da situação, Valerie e Peter planejam fugir, mas veem seus planos irem por água abaixo quando a irmã mais velha de Valerie é assassinada pelo lobisomem que ronda a região. Eles recorrem ao padre Solomon, um caçador famoso de monstros que adverte que a fera toma forma humana durante o dia.", anoDeLancamento: 2011, adulto: false, infantil: true)
    
    static let casper = Filme(nome: "Casper", poster: "Casper", descricao: "Gasparzinho é um fantasminha camarada que tenta gentilmente assombrar uma mansão no estado do Maine. Ele se apaixona por Kat, uma humana cujo pai tenta se comunicar com espíritos.", anoDeLancamento: 1995, adulto: false, infantil: true)
    
    static let coraline = Filme(nome: "Coraline e a Porta Secreta", poster: "coraline", descricao: "Enquanto explora sua nova casa à noite, a pequena Coraline descobre uma porta secreta que contém um mundo parecido com o dela, porém melhor em muitas maneiras. Todos têm botões no lugar dos olhos, os pais são carinhosos e os sonhos de Coraline viram realidade por lá. Ela se encanta com essa descoberta, mas logo percebe que segredos estranhos estão em ação: uma outra mãe e o resto de sua família tentam mantê-la eternamente nesse mundo paralelo.", anoDeLancamento: 2010, adulto: false, infantil: true)
    
    static let aNoivaCadaver = Filme(nome: "A Noiva Cadáver", poster: "aNoivaCadaver", descricao: "As famílias de Victor e Victoria estão arranjando seu casamento. Nervoso com a cerimônia, Victor vai sozinho à floresta para ensaiar seus votos. No entanto, o que ele pensava ser um tronco de árvore na verdade é o braço esquelético de Emily, uma noiva que foi assassinada depois de fugir com seu amor. Convencida que Victor acabara de lhe pedir a mão em casamento, Emily o leva para o mundo dos mortos, mas ele precisa retornar rapidamente antes que Victoria se case com o malvado Lorde Barkis.", anoDeLancamento: 2005, adulto: false, infantil: true)
    
    static let oEstranhoMundoDeJack = Filme(nome: "O Estranho Mundo de Jack", poster: "oEstranhoMundodeJack", descricao: "Jack Skellington, o Rei das Abóboras, se cansa de fazer o Dia das Bruxas todos os anos e deixa os limites da cidade. Por acaso, acaba atravessando o portal do Natal, onde vê a alegria do espírito natalino. Ao retornar para a Cidade do Halloween, sem ter compreendido o que viu, ele começa a convencer os cidadãos a sequestrarem o Papai Noel e fazerem seu próprio Natal. Apesar de sua leal namorada Sally ser contra, o Papai Noel é capturado e os fatos mostrarão que Sally estava certa o tempo todo.", anoDeLancamento: 1993, adulto: false, infantil: true)
    
    static let carrie = Filme(nome: "Carrie, A Estranha ", poster: "carrie", descricao: "Carrie é uma jovem tímida, perseguida pelos colegas, professores e impedida pela mãe de levar uma vida comum. No dia de sua formatura, descobre que possui poderes telecinéticos quando os jovens mais populares da escola a humilham diante de todos.", anoDeLancamento: 2014, adulto: true, infantil: false)
    
    static let addams = Filme(nome: "A Família Addams 2", poster: "addams", descricao: "Os membros da estranha Família Addams fazem mais palhaçadas macabras que antes. Desta vez, Gomez Addams e sua esposa Mortícia estão comemorando a chegada de um bebê. Porém os irmãos Wednesday e Pugsley não estão muito felizes com a novidade e tentam eliminar o bebê. Quando a babá Debbie Jelinsky aparece para manter as crianças na linha, sua presença leva a uma revira-volta inesperada.", anoDeLancamento: 1993, adulto: false, infantil: true)
    
    static let ghost = Filme(nome: "Ghost", poster: "ghost", descricao: "Sam Wheat é um jovem executivo apaixonado por sua namorada, Molly. Ele acaba morto em um assalto, mas seu espírito não vai para o outro plano e descobre que Molly também corre perigo. Para salvá-la, Sam pede ajuda a uma médium que consegue ouvi-lo.", anoDeLancamento: 1990, adulto: true, infantil: false)
    
    static let eli = Filme(nome: "Eli", poster: "eli", descricao: "Eli Miller é um jovem garoto que sofre de uma doença rara que causa reações alérgicas graves ao ar livre, forçando-o a viver sua vida em equipamento de proteção. Seus pais, Rose e Paul, o levaram para a unidade médica isolada da Dra. Isabella Horn, uma casa grande e antiga que foi modernizada e colocada em quarentena. Eli está inicialmente muito feliz que a instalação lhe permita remover seu 'traje de banho', abraçar seus pais e desfrutar dos confortos anteriormente negados a ele. Sua alegria é curta, no entanto, quando ele começa a experimentar fenômenos sobrenaturais em casa. Ele também inicia seus tratamentos, que são dolorosamente dolorosos.", anoDeLancamento: 2019, adulto: true, infantil: false)
    
    static let linhaMortal = Filme(nome: "Linha Mortal", poster: "linhaMortal", descricao: "Cinco estudantes de medicina enfrentam as consequências de engatilhar experiências de quase morte.", anoDeLancamento: 2017, adulto: true, infantil: false)
    
    static let birdBox = Filme(nome: "Bird Box", poster: "birdBox", descricao: "Bird Box é um filme estadunidense de 2018, dos gêneros drama, ficção científica e suspense, dirigido por Susanne Bier, com roteiro de Eric Heisserer baseado no livro homônimo de Josh Malerman.", anoDeLancamento: 2018, adulto: true, infantil: false)
    
    static let cacaFantasma = Filme(nome: "Caça-Fantasmas: Sabe quem Chamar", poster: "cacaFantasma", descricao: "A investigadora paranormal Abby Yates se une à física Erin Gilbert para tentar provar a existência de fantasmas na sociedade moderna. Estranhas aparições começam a ocorrer em Manhattan, então Gilbert e Yates recrutam a ajuda da engenheira Jillian Holtzmann. A nova-iorquina Patty Tolan, que conhece a cidade de ponta a ponta, acaba se unindo ao grupo, e juntas, elas se preparam para uma épica batalha contra milhares de fantasmas que atacam a Times Square e começam a possuir a população.", anoDeLancamento: 2016, adulto: false, infantil: true)
    
    static let invocacao = Filme(nome: "A Invocação do mal", poster: "invocacao", descricao: "Os investigadores paranormais Ed e Lorraine Warren trabalham para ajudar a família aterrorizada por uma entidade demoníaca em sua fazenda.", anoDeLancamento: 2013, adulto: true, infantil: false)
    
    
    static var listaDeFilmes: [Filme] = [
        oCorpoDeJennifer, it, semSaida, dracula, sweenyTodd, asBruxasdeRoald, crimson, aRaparigaDoCapuzVermelho, casper, coraline, aNoivaCadaver, oEstranhoMundoDeJack, carrie, addams, ghost, eli, linhaMortal, birdBox, cacaFantasma, invocacao
    ]

}
