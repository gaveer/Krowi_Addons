TreeObject = {};
TreeObject.__index = TreeObject;
function TreeObject:New(name)
    local self = {};
    setmetatable(self, TreeObject);
    self.Name = name or "Unknown";
    self.Level = 0;
    self.ID = "";
    self.Children = {};
    return self;
end
function TreeObject:AddChild(child)
    table.insert(self.Children, child);
    child.Level = child.Level + 1
    child.ID = self.ID .. "_" .. #self.Children;
    print(child.ID);
    return child;
end