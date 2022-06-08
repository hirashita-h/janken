def jankenpon
  puts "最初はグー、じゃんけん..."
  puts "[0]:グー[1]:チョキ[2]:パー[3]:戦わない"

  player_hand = gets.to_i
  while player_hand >= 3
    if player_hand == 3
      puts "えー遊ぼうよ"
      puts "最初はグー、じゃんけん..."
      puts "[0]:グー[1]:チョキ[2]:パー[3]:戦わない"
    else
      puts "'0~3'の数字を入力してください。"
      puts "最初はグー、じゃんけん..."
      puts "[0]:グー[1]:チョキ[2]:パー[3]:戦わない"
    end
    player_hand = gets.to_i
  end
  program_hand = rand(3)


  jankens=["グー","チョキ","パー"]

  puts "ホイ！"
  puts "--------------------"
  puts "あなた：#{jankens[player_hand]}を出しました。"
  puts "相手：#{jankens[program_hand]}を出しました。"
  puts "--------------------"

  if player_hand == program_hand
    return "aiko"
  elsif (player_hand == 0 && program_hand ==1) ||(player_hand == 1 && program_hand ==2) || (player_hand == 2 && program_hand ==0)
    return "player_win"
  else
    return "program_win"
  end
end

def aikodesho
  puts "あいこで..."
  puts "[0]:グー[1]:チョキ[2]:パー"

  player_hand = gets.to_i

  program_hand = rand(3)


  jankens=["グー","チョキ","パー"]

  puts "ショ！"
  puts "--------------------"
  puts "あなた：#{jankens[player_hand]}を出しました。"
  puts "相手：#{jankens[program_hand]}を出しました。"
  puts "--------------------"

  if player_hand == program_hand
    return "aiko"
  elsif (player_hand == 0 && program_hand ==1) ||(player_hand == 1 && program_hand ==2) || (player_hand == 2 && program_hand ==0)
    return "player_win"
  else
    return "program_win"
  end
end

def acchimuitehoi(janken_winner)
  puts "あっちむいて"
  puts "[0]:上[1]:下[2]:左[3]:右"

  player_acchi = gets.to_i

  program_acchi = rand(4)


  direction=["上","下","左","右"]

  puts "ホイ！"
  puts "--------------------"
  puts "あなた：#{direction[player_acchi]}"
  puts "相手：#{direction[program_acchi]}"
  puts "--------------------"

  if player_acchi == program_acchi && janken_winner == "player_win"
    puts "あなたの勝ち"
    return false
  elsif player_acchi == program_acchi && janken_winner == "program_win"
    puts "あなたの負け"
    return false
  else
    return true
  end
end

shohai = true
while shohai
  janken_winner = jankenpon()
  while janken_winner == "aiko"
    janken_winner = aikodesho()
  end
  shohai = acchimuitehoi(janken_winner)
end