#!/bin/bash

CHECKERS_MAIN_PATH="/Users/hoata/Desktop/UCI/Senior/FALL2023/CS171/checker-project/AI_Checkers/src/checkers-python/main.py"
RANDOM_AI_PATH="/Users/hoata/Desktop/UCI/Senior/FALL2023/CS171/checker-project/AI_Checkers/Tools/Sample_AIs/Random_AI/main.py"
POOR_AI_PATH="/Users/hoata/Desktop/UCI/Senior/FALL2023/CS171/checker-project/AI_Checkers/Tools/Sample_AIs/Poor_AI/main.py"
AVERAGE_AI_PATH="/Users/hoata/Desktop/UCI/Senior/FALL2023/CS171/checker-project/AI_Checkers/Tools/Sample_AIs/Average_AI/main.py"

random_ai_wins=0
poor_ai_wins=0
average_ai_wins=0
student_win=0;
tie_game=0;

GAMES_TO_PLAY=10  ## HERE NUMBER PLAY GAME

for (( i=1; i<=GAMES_TO_PLAY; i++ ))
do
  echo "Playing game $i..."
  result=$(python3 AI_Runner.py 8 8 2 l "$CHECKERS_MAIN_PATH" "$POOR_AI_PATH")

  if [[ $result == *"player 2 wins"* ]]; then
    ((poor_ai_wins++))
  elif [[ $result == *"Tie"* ]]; then
    ((tie_game++))
  else
    ((student_win++))
  fi

   echo "Current Scoreboard: Poor AI wins: $((poor_ai_wins)), Student win: $((student_win)), Tie: $((tie_game))"
done

   echo "Final Scoreboard: Poor AI wins: $((poor_ai_wins)), Student win: $((student_win)), Tie: $((tie_game))"




