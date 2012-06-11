class Dessert
def initialize(name,calories)
@name=name
@calories=calories
end
def name
@name
end
def name=(new)
@name=new
end
def calories
@calories
end
def calories=(new_c)
@calories=new_c
end
def healthy?
if self.calories<200 then return true
else return false
end
end
def delicious?
return true
end
end

class JellyBean < Dessert
def initialize(name,calories,flavor)
@name=name
@calories=calories
@flavor=flavor
end
def name
@name
end
def name=(new)
@name=new
end
def calories
@calories
end
def calories=(new_c)
@calories=new_c
end
def flavor
@flavor
end
def flavor=(new_f)
@flavor=new_f
end
def delicious?
if self.flavor!="black licorice" then return true
else return false
end
end
end

