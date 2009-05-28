#!/usr/bin/env ruby

require 'rubygems'
require 'meow'

def parse_words(words)
  dict = {}
  words.gsub("\n", "").split(/\s*-\s*/).map do |line|
    dict[$1] = $2.strip if line =~ /([^:]*):(.*)/
  end

  dict
end

words = parse_words(<<-WORDS)
 - Perspicuous:
    clearly expressed and easily understood; lucid
 - Contention:
    heated disagreement
 - Antiquated:
    old-fashion or outdated
 - Pedagogical:
    of or relating to teaching
 - Contentious:
    causing or likely to cause an argument; controversial: a contentious issue
 - Prodigious:
    remarkably or impressively great in extent, size or degree: Mr. Mailer was
    a prodigious drinker
 - Complacent:
    showing smug or uncritical satisfaction with oneself or achievements: You
    can't be complacent about security.
 - Credulous:
    having or showing too great readiness to believe things.
 - Idempotent:
    denoting an element that is unchanged in value when operated on
    by itself
 - Exasperate:
    irritate intensely; infuriate: this futile process exasperates prison
    officials.
 - Conduit:
    a channel for conveying water or other fluid: 
 - Apres:
    coming after in time, typically specifying a period following an activity:
    A low-fat apres-workout snack.
 - Sedulous:
    showing dedication and diligence: he watched himself with the most
    sedulous care
 - Profligate:
    recklessly extravagant or wasteful in use: profligate consumers
 - Histrionic:
    overly theatrical or melodramatic in character: He [Cormac McCarthy] is
    also one of the great hams of American prose, who delights in producing a
    histrionic rhetoric that brilliantly ventriloquizes the King James Bible..
 - Aspersion:
    an attack on the reputation or integrity of someone or something: I don't
    think anyone is casting aspersion on you.
 - Asperity:
    harshness of tone or manner: he pointed this out with some asperity.
 - Moot:
    subject to debate, dispute, or uncertainty, and typically not admitting of
    a final decision: whether the temperature rise was mainly due to the
    greenhouse effect was a moot point.
 - Zealot:
    a person who is fanatical and uncompromising in pursuit of their
    religious, political, or other ideals
 - Fervor:
    intense and passionate feeling: he talked with all the fervor of a new
    convert.
 - Miser:
    a person who hoards wealth and spends as little money as possible
 - Servile:
    having or showing an excessive willingness to server or please others:
    bowing his head in a servile manner.
 - Precursory:
    preceding something in time, development, or position; preliminary
 - Vigor:
    physical strength and good health: flag means to decline in vigor.
 - Drawl:
    speak in a slow, lazy way with prolonged vowel sounds
 - Scintillate:
    emit flashes or light; sparkle
 - Saunter:
    walk in a slow, relaxed manner, without hurry or effort; Adam sauntered
    into the room.
 - Precipitous:
    dangerously high or steep
 - Malinger:
    exaggerate or feign illness in order to escape duty or work
 - Soporific:
    tending to induce drowsiness or sleep
 - Malleable:
    able to be hammered or pressed permanently out of shape without breaking
 - Impede:
    delay or prevent by obstructing them; hinder
 - Ignominious:
    deserving or causing public disgrace or shame: no other party risked
    ignominious defeat.
 - Noxious:
    harmful or poisonous, or very unpleasant: overcome by noxious fumes.
 - Pragmatic:
    dealing with things sensibly or realistically in a way that is based on
    practical consideration: a pragmatic approach to politics.
 - Voracious:
    wanting or devouring great quantities of food: he had a voracious appetite
 - Morose:
    sullen and ill tempered
 - Frank
    open and honest, and direct in speech or writing
 - Forebode
    act as a warning of something bad
 - Desultory
    lacking a plan, purpose, or enthusiasm
 - Contiguous:
    sharing a common border
 - Promulgate:
    promote or make widely known
 - Reprieve:
    cancel or postpone the punishment of someone or plans for something
 - Evince:
    be evidence of: the letters evince the excitement he felt
 - Eviscerate:
    disembowel. Figurative: deprive something of its essential content
    NYTimes: ..a glib little book that eviscerates contemporary architects or
        the extravagance of their designs.
 - Belied:
    fail to fulfill or justify
    GRE: His lack of confidence belied the respect with which he was regarded.
 - Diffident:
    modest or shy because of lack of self confidence
    GRE: Because of his public posturing, people are surprised to discover he
        is a diffident man in private.
 - Insular:
    ignorant or uninterested in cultures, ideas, or peoples outside of one's
        own experience
    Call of the Wild: ...he was even a trifle egotistical, as country
        gentleman sometimes become because of their insular situation
 - Progeny:
    descendant or descendants of a person
    Call of the Wild: ...the wages of a gardeners helper do not lap over
        the needs of a wife and numerous progeny.
 - Obdurate:
    stubbornly refusing to change one's opinion or course of action
    Call of the Wild: Francoise was obdurate [regarding Buck's position in
        the traces]
 - Perambulate:
    walk or travel through or around especially in a leisurely way
    Call of the Wild: As it was with Buck, so was it with his mates. They
        were perambulating skeletons [referring to the starved dogs].
 - Innocuous:
    not harmful or offensive
    Call of the Wild: With dogs falling, Mercedes weeping and riding, Hal
        swearing innocuously...they staggered into John Thornton's camp.
 - Convalesce:
    recover one's health and strength over a period of time after one's
        illness or operation
    Call of the Wild: ...and in this fashion Buck romped through his
        convalescence and into a new existence.
 - Naivete:
    lack of experience, wisdom or judgement
    Reid using his blackberry
 - Auspicious:
    conducive to success; favorable
    Call of the Wild: The day began auspiciously
 - Forebode:
    act as a warning of
    Call of the Wild: Bill seemed to have forgotten his forebodings of the
        previous night
 - Virile
    having strength, energy, and a strong sex drive
    Call of the Wild: A carnivorous animal [Buck], living on a straight meat
    diet, he was in full flower, at the high tide of his life, overspilling
    with vigor and virility.
 - Paroxysm
    a sudden attack or violent expression of a particular emotion or activity
    Call of the Wild: Unable to turn his [moose] back on the ganged danger and
    go on, the bull would be driven into paroxysms of rage.
 - Beset
    trouble or threaten persistently
    Call of the Wild: ...the young bulls retraced their steps more and more
        reluctantly to aid their beset leader.
 - Palpitate
    (of the heart) beat rapidly, strongly, or irregularly
    Call of the Wild: 
 - Despondent
    in low spirits from loss of hope or courage
    Rufus Wainwright being asked if he became despondent on his long road to
        recognition.
 - Quotidian
    of or occurring every day; daily
    ordinary or everyday, especially when mundane
 - Concomitant
    naturally accompanying or associated
    Concomitantly, I have worked as the undergraduate TA for HCI...
 - Copious
    abundant in supply or quantity
 - Compliment
 - Complementary
 - Canonical
    included in the list of sacred books officially accepted as genuine
 - Confluence
    junction of two rivers; an act or process of merging
    Ubicomp paper: The confluence of these two trends...
 - Quiescent: in a state or period of inactivity
 - Equivocate:
 - Ambivalent:
 - Lexicon: the vocabulary of a person, language, or branch of knowledge
    Everyone knows what blue-collar and white-collar jobs are, but now a job
    of another hue - green - has entered the lexicon.
 - Backwater: an isolated or peaceful place; a place or condition in which no 
    development or progress is taking place
    Guns, Germs & Steel: The Nile Valley remained a cultural backwater for
    about 3,000 years
 - Ephemeral: lasting for a very short while
    Fashions are ephemeral.
 - Enchanté: French for enchanted but equivalent to 'nice to meet you'
 - Prophetic: accurately describing or predicting what will happen in the future
 - Divisive: tending to cause disagreement or hostility between people
    the highly divisive issue of abortion
 - Grandiloquent: 
 - Benevolent:
 - Confound:
 - Amiable:
 - Ephemeral:
 - Protean: tending to or able to change frequently or easily
 - Cultivate: try to acquire or develop
				try to win the friendship or favor of; he (Obama) cultivates older, powerful mentors -NYTimes
 - Soliloquy: an act of speaking one's thoughts aloud when by oneself or regardless of any hearers
 - Inclination: a person's natural tendency
 - Petulant: childishly sulky or bad tempered
 - Inflection:
 - Posterity: all future generations
 - Surreptitious: kept secret especially because it would not be approved of
 - Irrefutable: impossible to deny or disprove
 - Misnomer: a wrong or inaccurate name or designation
 - Rhetoric: the art of effective or persuasive speaking or writing, esp. the use of figures of
				speech and other compositional techniques. language designed to have a persuasive or
				impressive effect on its audience, but is often regarded as lacking in sincerity or
				meaningful content
 - Loquacious: talkative
 - Intelligible: able to be understood; comprehensible.
					spaces were introduced after the invention of the Greek alphabet to make words
					intelligible as distinct units.
 - Evoke: bring or recall to the conscious mind
 - Sartorial: of or relating to tailoring, clothing, or style of dress
 - Parallax:
 - Extant: still in existence; surviving
				the original manuscript is no longer extant
 - Prescient: having or showing knowledge of events before they take place
				John's prescient image of ...
 - Esoteric: intended for or likely to be understood by only a small number of people with a specialized knowledge or interest
				Photoshop's esoteric functions
 - Panacea: a solution or remedy for all difficulties or diseases
			the panacea for all corporate ills
 - Defray: to provide money to pay a cost or expense
 - Demarkate: to separate or distinguish from
 - Homogenize: make uniform or similar
 - Subversive: seeking or intending to subvert an established system or institution (subvert: undermine the power of authority)
 - Extol: praise enthusiastically
 - Embolden: give the courage or confidence to do something or behave in a certain way
 - Garish: obtrusively bright and showy
 - Abject:
 - Hyperbole: exaggerated statements not meant to be taken literally
 - acquiesce: accept something reluctantly but without protest
 - Elucidate: make clear
 - Vacuous: 
 - Mitigate:
 - Ribald: :  "I have some monkey examples that aren't quite so ribald"
 - Corpulent: 
 - Libidinous: 
 - Crass:
 - exult: show or feel elation or jubilation

WORDS

m = Meow.new("words")
while true
  word = words.keys[words.keys.size * rand]
  defn = words[word]
  m.notify(word, defn)
  sleep(rand * 60 * 60)
end
