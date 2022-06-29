local wheel = {
    size = 6,
}

function wheel:getSize()
    return self.size
end

function wheel:new(instance)
    assert(type(instance.size) == 'number' and instance.size > 0, "size: must be a positive integer")

    instance = instance or {}

    setmetatable(instance, self)
    self.__index = self
    return instance
end

return wheel