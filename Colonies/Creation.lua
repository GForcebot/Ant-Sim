local repo:{{folder:{string} | string}} = RepoToTable("GForcebot", "Ant-Sim")
local antcreation = loadstring(repo.main.Ants["Creation.lua"])()
local Colonies = {}

type Colony = {
    color:Color3,
    ants:table
}

function Colonies:CreateColony(color:Color3)
    local colony = {





    }
    return colony
end

function Colonies:CreateAnts(colony,num)
    antcreation:CreateAnt(colony)
end
return Colonies