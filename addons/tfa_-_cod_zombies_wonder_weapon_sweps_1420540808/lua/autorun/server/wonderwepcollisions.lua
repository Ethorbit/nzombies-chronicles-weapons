--local projectiles = {
--    "wunderwaffe_entity_ball",
--    "sliquifier_slip",
--    "sliquifier_proj",
--    "obj_rgun_proj",
--    "obj_rgun_mrk2_proj",
--    "obj_whowl_proj",
--    "obj_humangun_proj",
--    "obj_scavenger_proj",
--    "obj_wgun_proj",
--    "obj_wgun_proj2",
--    "obj_thundergun_proj",
--    "obj_blank_proj",
--    "obj_babygun_proj",
--    "obj_babygun_proj_bkp"
--}

--hook.Add("ShouldCollide", "FixWonderWepCollisions", function(ent1, ent2)
--  --  if table.HasValue(projectiles, ent1:GetClass()) then
--  --      if (ent2:IsPlayer()) then return false end
--  --      
--  --  --     if (ent2:GetClass() == "breakable_entry" || ent2:GetClass() == "wall_block_zombie" || ent2:GetClass() == "invis_wall_zombie" || ent2:GetClass() == "wall_block" || ent2:GetClass() == "invis_wall" || ent2:GetClass() == "invis_wall_block") then
--  --  --         return false
--  --  --     end
--  --  end
--  --  
--  --  if table.HasValue(projectiles, ent2:GetClass()) then
--  --      if (ent1:IsPlayer()) then return false end
--  --      
--  --  --     if (ent1:GetClass() == "breakable_entry" || ent1:GetClass() == "wall_block_zombie" || ent1:GetClass() == "invis_wall_zombie" || ent1:GetClass() == "wall_block" || ent1:GetClass() == "invis_wall" || ent1:GetClass() == "invis_wall_block") then
--  --  --         return false
--  --  --     end
--  -- end
--end)
