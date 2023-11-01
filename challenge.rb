system("clear")


class Question
    attr_accessor :prompt, :answer 
    def initialize(prompt, answer) 
        @prompt = prompt 
        @answer = answer 
    end
end


def game_play_logic 

p1 = "How many Oscars did the movie 'Titanic' win?     (a) 8   (b) 11   (c) 15"
p2 = "Who said this quote?    'The way to get started is to quit talking and begin doing.'     (a) Dale Carnegie   (b) Walt Disney   (c) Thomas Edison"
p3 = "Which country drinks the most amount of coffee per person?     (a) Finland   (b) Colombia   (c) Italy"
p4 = "Who invented the Computer?     (a) Bill Gates   (b) Steve Jobs   (c) Charles Babbage"
p5 = "In which ancient civilization were scissors?     (a) Ancient Egypt   (b) Ancient Rome   (c) Ancient Greece"

questions = [Question.new(p1, "b"), Question.new(p2, "b"), Question.new(p3, "a"), Question.new(p4, "c"), Question.new(p5, "a")]

    answer = ''
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp
        if (question.answer == answer)
            score += 1
        end
    end        
    puts "score:#{score}"
end

game_play_logic
