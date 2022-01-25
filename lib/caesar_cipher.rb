#caesar_cipher.rb by JBV for THP Développeur Hiver 2022

def encrypt_char(car,rot)
  rotate=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  
  if rotate.index(car.downcase) 
    puts car + " > " + rotate[rotate.index(car.downcase)+rot]
    if car == car.upcase
      rotate[rotate.index(car.downcase)+rot].upcase
    else
      rotate[rotate.index(car.downcase)+rot]
    end
  else
    puts car + " ne change pas"
    car
  end
end

def caesar_cipher(motclair,rotation=13)
  motcrypte = ""
  i=0
  while i < motclair.length do
    motcrypte += encrypt_char(motclair[i],rotation)
    puts motcrypte
    i+=1
  end
  puts "mot clair: "+ motclair + " >> mot crypté: "+ motcrypte
  return motcrypte
end

# [DEBUG MODE ON]
# A commenter lors du passage sous Rspec
def perform
  caesar_cipher("What a string!", 5)
  caesar_cipher("What a fucking string!", 13)
  caesar_cipher("What a Mother fucking string!", 18)
end

perform
# [DEBUG MODE OFF]

#caesar_cipher.rb by JBV for THP Développeur Hiver 2022