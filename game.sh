function guessing_game {
   rand_num=$((RANDOM%$1))
   for i in {1..3}; do
   # while [i -lt 3]; do
   # i=i+ 1
      
      if [ $2 -eq $rand_num]; then 
         echo "you got it correct, bravo!"
         return
      elif [ $rand_num -gt $2]; then
         echo "you missed!, the number is greater than $2"
         # read -p "please try again: " | read guess_number
         # $2 = $guess_number

      else 
         echo "you missed!, the number is less than $2"
         # read -p "please try again: " | read guess_number
         # $2 = $guess_number
      fi
   done 
      # if [i -eq 3]; then
      echo "you lose, the number is $rand_num" 
      # fi

}