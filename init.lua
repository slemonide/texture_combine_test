function stretch_texture(texture1, texture2,h,w)
	if not w then
		w = h
	end
	local tile = "[combine:" .. h .. "x" .. w
	for x=0,h-1 do
	for y=0,w-1 do
		if math.random(2) == 1 then
			tile = tile .. ":" .. x .. "," .. y .. "=" .. texture1
		else
			tile = tile .. ":" .. x .. "," .. y .. "=" .. texture2
		end
	end
	end

	return tile
end

local h = 30
local w = 31

local tile = stretch_texture("a.png", "b.png", h, w)

minetest.register_node("texture_combine_test:stone", {
	description = "Debug Stone",
	tiles = {tile},
	groups = {cracky=3, stone=1},
})
