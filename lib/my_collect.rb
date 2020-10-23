
def my_collect(array)
    counter = 0
    new_array = []
    while counter < array.length
        new_value = yield(array[counter])
        new_array.push(new_value)
        counter +=1
    end
    new_array
end

array = ["jimmy", "gReta", "kylE"]
my_collect(array) do |name| 
    name.upcase
end