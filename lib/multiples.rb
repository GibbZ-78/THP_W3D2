#multiples.rb by JBV for THP Développeur Hiver 2022

def is_multiple_of_3_or_5?(n)
  (n%3==0) || (n%5==0)
end

def sum_of_3_or_5_multiples(final_number)
  if final_number.integer?
    final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro
    i = 0
    # Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
    # cette boucle indente à chaque tour une variable (par exemple "i") qui vaudra 0 puis 1 puis 2 ... etc.
    while i < final_number do
      if is_multiple_of_3_or_5?(i)
        # si la réponse est "true", alors je rajoute la valeur de "i" à la variable "final_sum".
        final_sum += i
      end
      i+=1
    end #Ici, positionne la fin de la boucle
    puts "Somme finale : #{final_sum}" # Optionnel mais plus parlant pour le DEBUG
    return final_sum #on retourne la variable qui contient la somme du tout
  else
    puts "Wrong argument" # Optionnel mais plus parlant pour le DEBUG
    return "Wrong argument"
  end
end

#multiples.rb by JBV for THP Développeur Hiver 2022
