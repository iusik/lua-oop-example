local car = require('car'):new({
    brand = "Bmw",
    model = "X5",
    year = 2012,
    wheel = {
        size = 2
    }
})

print(car:getYear())
print(car:getBrand())
print(car:getModel())

print(car:getWheel():getSize())




