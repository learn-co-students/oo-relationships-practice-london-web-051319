require "require_all"
require_relative '../config/environment.rb'
require_relative "../app/imdb/helper.rb"
require_all "app/imdb"

#Create a helper method
def create(klass, arr)
  arr.map! {|x| Object.const_get(klass).new(x)}
end

classes = %w(Movie Show)

actors = %w(Alan Albert Alec Alexander Alfred  Allan  Andrew  Anthony  Arnold  Arthur  Barrie  Barry  Basil  Benjamin  Bernard  Brian  Bryan  Cecil Charles Christopher  Clifford  Clive  Colin  Cyril  Daniel  David  Denis  Dennis  Derek  Derrick Desmond Donald Douglas Dudley Edgar Edmund Edward Edward Edwin Eric Ernest Francis Frank Fred Frederick Geoffrey George Gerald Gilbert Gordon Graham Harold Harold Harry Henry Herbert Horace Howard Hubert Hugh Ian Isaac Ivan Ivor Jack James Jeffrey John Joseph Keith Kenneth Laurence Lawrence Leonard Leslie Lewis Lionel Malcolm Martin Maurice Michael Neil Neville Noel Norman Owen Patrick Paul Percival Percy Peter Philip Ralph Raymond Reginald Richard Robert Robin Rodney Roger Roland Ronald Roy Royston Samuel Sidney Stanley Stephen Sydney Terence Thomas Trevor Victor Vincent Walter Wilfred William Ada Agnes Alice Alma Amy Angela Ann/e Annie Audrey Avis Barbara Beatrice Beryl Betty Brenda Bridget Catherine Christine Constance Cynthia Daisy Daphne Diana Dora Doreen Doris Dorothy Edith Edna Eileen Eleanor Elizabeth Ellen Elsie Emily Ena Enid Ethel Eunice Eva Evelyn Florence Frances Freda Gertrude Gillian Gladys Gloria Grace Gwendoline Gwynneth Hannah Hazel Heather Helen Hilda Ida Irene Iris Ivy Jacqueline Jane Janet Jean Jennifer Jessie Joan Josephine Joy Joyce Judith June Kathleen Lilian Lily Lorna Lucy Mabel Margaret Maria Marie Marion Marjorie Marlene Mary Maureen Mavis May Mildred Molly Monica Muriel Myrtle Nancy Nellie Nora/h Norma Olive Pamela Patricia Pauline Peggy Phyllis Rita Rose Rosemary Ruby Ruth Sarah Sheila Stella Sybil Sylvia Thelma Vera Veronica Violet Wendy Winifred Yvonne)

characters = %w(Achilles Aeneas  Albany  Albion  Almeric Alpheus  Andronicus Amadeus Amias Amraphel  Aquilla  Archelaus  Arphaxad  Artemas Aurelian  Balthazar Barnabas Bartleby Beresford  Cadwallader  Casimir Caspar Cassander Cephas Cornelius  Courtenay  Cyprian  Cyrillus Darius Demosthenes  Devereux Dryden   Edric  Ethelbert  Eusebius Everard   Ferdinand Galenus  Granville  Hamlet  Hercules  Ignatius  Isambard  Justinian  Lancelot Lapidoth Lazarus  Leoline Leonidas   Marsena  Melancthon  Melbourne  Montmorency  Mortimer  Mycroft Nehemias  Octavius  Orestes  Pharoah  Philemon  Philetus  Prospero Ptolomy Ranulphus  Swithin  Sylvester Tarquin  Taliesin Theoderic Theophilus  Tresillian  Trevelyan  Ulric Vane  Vitruvius Voltaire Vyvyan Wolfgang   Wolstan  Xenophon Xerxes  Adamantine Adeliza Alcesta  Ambrosina  Anchoretta Andromeda  Aramantha Artemisia Asenath Aspasia  Bathsheba Bellamira Bellicent  Belvidera  Boadicea Brilliana Castilla Celestia Clarimond Cleopatra  Constantia Crescentia Deidamia Delilah Demetria Desdemona Dorinda Drusilla Emerentiana Esmeralda Esperanza Etheldreda Ethelfleda  Eurania Eusebia  Everalda  Euphrosyne Hesper(ia) Hortensia Isidora Isoline Laodamia Lucretia Lucrezia Lusitania Lystra Marcellina  Medea Medora Melusina Melvina Milborough  Minerva Morforwyn   Morgana Morrigan  Morwenna Narcissa Pandora Petronilla Philadelphia Rowena Semiramis  Sophronia  Syndonia Theodocia Theodorine Theophania Tryphena Tryphosa Ursuline  Vashti Vesperina Victorine  Violetta Xantippe Ximena Zenobia Zetilla Zilla Zuleika)

movies = %w(goodmovie intersting movie supermovie GoodFamily)

# episodes = %w(episode1 episode2 episode3 episode4)

shows = %w(ThroneOfThrones CardsOfHouse Serenity Jubilee GoodFamily)


create("Movie", movies)
create("Show", shows)
create("Actor", actors)

#create characters for movies
movies.each do |movie|
  n = rand(20) + 8
  n.times do
    movie.add_a_character(characters.sample, actors.sample)
  end
end

#create episodes
shows.each do |show|
  n = (rand(7) + 2)
  for i in 1..n
    show.make_an_episode("episode#{i}")
  end
end

#create characters for shows
Episode.all.each do |episode|
  n = rand(20) + 8
  n.times do
    episode.add_a_character(characters.sample, actors.sample)
  end
end

Pry.start
