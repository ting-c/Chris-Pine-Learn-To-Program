class OrangeTree

    def initialize name
        @name = name
        @height = 30 
        @age = 0
        @orangeCount = 0

        puts @name + ' planted.'
    end

    def height 
        puts 'The height is now ' + @height.to_s + ' cm'
    end
    def age
        if @age == 1
        puts @name + ' is now ' + @age.to_s + ' year old.'
        else
        puts @name + ' is now ' + @age.to_s + ' years old.'
        end
    end

    def oneYearPasses 
        @age = @age + 1
        @height = @height + 20
        if @age > 5
            puts 'The Orange Tree dies.' 
            exit
        end
        if @age >= 2
            @orangeCountFloat = @orangeCount + (@age **1.5)
            @orangeCount = @orangeCountFloat.to_i
        else
            @orangeCount = 0
        end
    end

    def die 
        puts @name + ' has died'
        exit
    end

    def countTheOranges
        puts 'There are currently '+ @orangeCount.to_s + ' oranges.'
    end

    def pickAnOrange
        if @orangeCount > 0
        @orangeCount = @orangeCount - 1
        puts 'I picked one orange. '+'The orange was delicious'
        puts 'There are now ' + @orangeCount.to_s + ' left'
        else 
        puts 'There are no more oranges to pick this year'
        end
       
    end

end

tree = OrangeTree.new 'Orange Tree'
tree.height
tree.countTheOranges
tree.oneYearPasses
puts ''
tree.age
tree.height
tree.countTheOranges
tree.pickAnOrange
tree.oneYearPasses
puts ''
tree.age
tree.height
tree.countTheOranges
tree.pickAnOrange
tree.oneYearPasses
puts ''
tree.age
tree.height
tree.countTheOranges
tree.oneYearPasses
puts ''
tree.age
tree.height
tree.countTheOranges
tree.pickAnOrange
tree.oneYearPasses
puts ''
tree.age
tree.height
tree.countTheOranges
tree.pickAnOrange
tree.oneYearPasses