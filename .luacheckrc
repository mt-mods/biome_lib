unused_args = false
max_line_length= 240
redefined = false

globals = {
	"biome_lib"
}

read_globals = {
	-- Stdlib
	string = {fields = {"split"}},
	table = {fields = {"copy", "getn"}},

	-- Minetest
	"vector", "ItemStack",
	"dump", "minetest",
	"VoxelManip", "VoxelArea",
	"PerlinNoise",

	-- mods
	"default", "intllib"

}
