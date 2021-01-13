class DiaperBag::CLI

   def call
      puts "Welcome To The Diaper Bag"
      list_brands
      menu
      #good_bye
   end 

   def list_brands
        #puts <<-DOC
       #1. Pampers - 20ct - $19.99
       #2. Huggies - 20ct - $15.99
       #DOC
      @diaper = DiaperBag::Diaper.all
       @diaper.each.with_index(1) do |diaper, i|
        puts "#{i}. #{diaper.brand}"
      end 
   end 

   def menu
     input = nil
     while input != "exit"
     puts "What diapers are you looking for?:"
     input = gets.strip.downcase

     if input.to_i > 0
      the_diapers = @diaper[input.to_i-1]
      puts "You have chosen #{the_diapers.brand} - #{the_diapers.count} - #{the_diapers.price}!"
      
     elsif input == "list"
       list_brands
     elsif input == "exit"
        good_bye
     else
      "bye"
     end 
   end 
end 

    def good_bye
        puts "Thank you! Come Again!"
    end 
end 