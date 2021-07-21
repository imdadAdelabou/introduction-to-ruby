blogs = []
while true
puts "Veuillez sélectionner l'operation à effectuer parmis les suivantes"
puts "1: Créer un blog"
puts "2: Afficher le blog créé"
puts "3: Quittez l'application de blog"
convert_number = gets.to_i
case convert_number
when 1
    blog = {}
    puts "Créer un blog"
    puts "Entrer le nom du blog"
    name_blog = gets
    puts "Entrez le titre du blog"
    title_blog = gets
    blog[:name] = name_blog
    blog[:title] = title_blog
    blogs << blog
    puts "Nom du blog: #{name_blog}"
    puts "title du blog: #{title_blog}"
when 2
    puts "View existing blog"
    blogs.each do |blog|
        puts "The Blog name is #{blog[:name]}"
        puts "The content is #{blog[:title]}"
    end
when 3
    puts "Exit the blog App"
    break
else
    puts "Enter the number between 1 and 3"
end
end

