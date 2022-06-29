local car = {
    brand = "",
    model = "",
    year = 0,
}


function car:getWheel()
    return self.wheel
end

function car:getBrand()
    return self.brand
end

function car:getModel()
    return self.model
end

function car:getYear()
    return self.year
end

function car:new(instance)
    assert(type(instance.year) == 'number' and instance.year > 0, "year: must be a positive integer")
    assert(type(instance.brand) == 'string', "brand: must be a string")
    assert(type(instance.model) == 'string', "model: must be a string")
    assert(type(instance.wheel) == 'table', "wheel: must be a table")

    instance = instance or {}
    -- create instance of wheel
    instance.wheel = require('wheel'):new(instance.wheel)

    setmetatable(instance, self)
    self.__index = self
    return instance
end

return car