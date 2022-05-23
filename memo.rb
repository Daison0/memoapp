require "csv"
puts "1(新規でメモを作成)2(既存のメモを編集)"

memo_type = gets.to_i

if memo_type == 1

  puts "拡張子を除いたファイル名を記入してください"
  file_name = gets.chomp.to_s
  puts "メモの内容を記入してください"
  puts "完了したらCtrl+Dを押します"
  memo = $stdin.read
  CSV.open("#{file_name}.csv","w") do |csv|
    csv.puts [memo]
  end
end

if memo_type == 2
    
  puts "拡張子を除いたファイル名を記入してください"
  file_name = gets.chomp.to_s
  puts "編集内容を入力して下さい"
  puts "完了したらCtrl+Dを押します"
  input = $stdin.read
  CSV.open("#{file_name}.csv","a") do |csv|
    csv.puts [input]
  end
end