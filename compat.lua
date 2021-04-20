-- compatibility shims for old mods

function biome_lib:register_generate_plant(b, n)
	biome_lib.dbg("Warning: biome_lib:register_generate_plant() is deprecated!", 2)
	biome_lib.dbg("Use biome_lib.register_on_generate() instead", 2)
	biome_lib.dbg("Item: "..dump(n), 2)
	biome_lib.register_on_generate(b, n)
end

function biome_lib:spawn_on_surfaces(sd, sp, sr, sc, ss, sa)
	biome_lib.dbg("Warning: biome_lib:spawn_on_surfaces() is deprecated!", 2)
	biome_lib.dbg("Use biome_lib.register_active_spawner() instead.", 2)
	biome_lib.dbg("Item: "..dump(sd.spawn_plants or sp[1] or sp), 2)
	biome_lib.register_active_spawner(sd, sp, sr, sc, ss, sa)
end

function biome_lib:replace_object(p, r, f, w, d)
	biome_lib.dbg("Warning: biome_lib:replace_object() is deprecated!", 2)
	biome_lib.dbg("Use biome_lib.replace_plant() instead.", 2)
	biome_lib.dbg("Item: "..dump(r), 2)
	biome_lib.replace_plant(p, r, f, w, d)
end

function biome_lib:grow_plants(o)
	biome_lib.dbg("Warning: biome_lib:grow_plants() is deprecated!", 2)
	biome_lib.dbg("Use biome_lib.update_plant() instead.", 2)
	biome_lib.dbg("Item: "..dump(o.grow_nodes), 2)
	biome_lib.update_plant(o)
end

function biome_lib.generate_ltree(p, n)
	minetest.spawn_tree(p, n)
end

function biome_lib.grow_ltree(p, n)
	minetest.spawn_tree(p, n)
end

function biome_lib:generate_tree(p, n)
	biome_lib.dbg("Warning: biome_lib:generate_tree() is deprecated!", 2)
	biome_lib.dbg("Use biome_lib.generate_ltree() instead.", 2)
	biome_lib.dbg("Item: "..dump(n), 2)
	biome_lib.generate_ltree(p, n)
end

function biome_lib:grow_tree(p, n)
	biome_lib.dbg("Warning: biome_lib:grow_tree() is deprecated!", 2)
	biome_lib.dbg("Use biome_lib.grow_ltree() instead.", 2)
	biome_lib.dbg("Item: "..dump(n), 2)
	biome_lib.grow_ltree(p, n)
end
