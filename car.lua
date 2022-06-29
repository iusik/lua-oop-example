local car = {
    brand = "",
    model = "",
    year = 0
}

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
    assert(type(instance.year) == 'number' and instance.year > 0, "year: be a positive integer")
    assert(type(instance.brand) == 'string', "brand: be a positive string")
    assert(type(instance.model) == 'string', "model: be a positive string")

    instance = instance or {}

    setmetatable(instance, self)
    self.__index = self
    return instance
end

return car