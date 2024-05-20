local repo = RepoToTable("GForcebot", "Ant-Sim")
local ants = loadstring(repo.main.Ants["Creation.lua"])()
local Colonies = {}
local worldmodel = Instance.new("WorldModel",script)
worldmodel.Name = "Colonies WorldModel"
function Colonies:CreateColony(color:Color3,Position:Vector3)
    local colony: {
        Ants: {ant: {
            Body: Part,
            colony: any,
        }},
        Food: table} = {
        color = color,
        Ants = {},
        Food = {},
        Visualizer = Instance.new("Part",worldmodel)
    }
    colony.Visualizer.Position = Position
    function colony:SpawnAnt()
        ants:CreateAnt(self)
    end
    function colony:RemoveFood()
        local food = math.random(1,#self.Food)
        self.Food[food]:Destroy()
        table.remove(self.Food,food)
    end
    table.insert(colony,Colonies)
    return colony
end

return Colonies