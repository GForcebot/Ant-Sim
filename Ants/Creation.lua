local Ants = {}
local repo = RepoToTable("GForcebot", "Ant-Sim")
local settings = loadstring(repo.main.Ants["Settings.lua"])()
local worldmodel = Instance.new("WorldModel",script)
worldmodel.Name = "Ant WorldModel"
function Ants:CreateAnt(colony)
    Ants.WorldModel = worldmodel
    local ant = {
        Body = Instance.new("Part"),
        colony = colony
    }
    ant.Body.Size = Vector3.new(settings.Size.width,settings.Size.length)
    ant.Body.Color = colony.Color
    table.insert(Ants,colony.Ants)
end


return Ants