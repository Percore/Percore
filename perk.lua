function PerkTest_OnGossipTalk(item, event, player, pMisc) 
local race = player:GetPlayerRace()
local class = player:GetPlayerClass() -- För Starting Gear
if (player:IsInCombat() == true) then
player:SendAreaTriggerMessage("You are in combat!")
else
item:GossipCreateMenu(2, player, 0)
--item:GossipMenuAddItem(1, "GuildBank", 1, 0)
--item:GossipMenuAddItem(0, "Mailbox", 2, 0)
--item:GossipMenuAddItem(6, "Auction House", 3, 0) 
--item:GossipMenuAddItem(0, "Repair Gear", 4, 0)

if race == 2 or race == 5 or race == 6 or race == 8 or race == 10 then
item:GossipMenuAddItem(10, "Horde Capital Cities", 5, 0)
item:GossipMenuAddItem(10, "Cities in Outland", 15, 0)
else
end
if race == 1 or race == 3 or race == 11 or race == 4 or race == 7 then
item:GossipMenuAddItem(10, "Alliance Capital Cities", 6, 0)
item:GossipMenuAddItem(10, "Cities in Outland", 16, 0)
else end

item:GossipMenuAddItem(10, "Neutral Cities", 7, 0)
item:GossipMenuAddItem(10, "Outland Dungeons", 9, 0)
item:GossipMenuAddItem(10, "Outland Raids", 10, 0)
item:GossipMenuAddItem(10, "Starting Gear", 11, 0)
item:GossipMenuAddItem(10, "Class Spells", 12, 0)
item:GossipMenuAddItem(10, "Weapon Skills", 13, 0)
item:GossipMenuAddItem(10, "Talent Spells (You Must TalentSpec First)", 14, 0)
item:GossipSendMenu(player)
end
end

function PerkTest_OnGossipSelect(item, event, player, id, intid, code, pMisc)
  --[[
		--GuildBank
		if(intid == 1) then
		local x,y,z,o = player:GetX(),player:GetY(),player:GetZ(),player:GetO()
                player:SpawnGameObject(18000000, x+1, y, z, o, 30000, 100)
                player:GossipComplete()
        end

		--Mailbox
		if(intid == 2) then
		local x,y,z,o = player:GetX(),player:GetY(),player:GetZ(),player:GetO()
                player:SpawnGameObject(18000001, x+1, y, z, o, 30000, 100)
                player:GossipComplete()
        end
		
		--Auction House
		if(intid == 3) then
		local x,y,z,o = player:GetX(),player:GetY(),player:GetZ(),player:GetO()
				player:SpawnCreature(8661, x+1, y, z, o, 35, 30000)
                player:GossipComplete()
       end
	   
	   	   --Repair
	   if(intid == 4) then
	   local x,y,z,o = player:GetX(),player:GetY(),player:GetZ(),player:GetO()
				player:SpawnCreature(14337, x, y, z, o, 35, 30000)
                player:GossipComplete()
       end
	   
									--]]
	   
	   --Horde Capital Cities
	   if(intid == 5) then
				item:GossipCreateMenu(2, player, 0)
				item:GossipMenuAddItem(10, "Orgrimmar", 20, 0)
				item:GossipMenuAddItem(10, "Undercity", 21, 0)
				item:GossipMenuAddItem(10, "Silvermoon City", 22, 0)
				item:GossipMenuAddItem(10, "Thunder Bluff", 23, 0)
				item:GossipMenuAddItem(10, "Shattrath City", 28, 0)
				item:GossipSendMenu(player)
       end
	   
	   --Alliance Capital Cities
	   if(intid == 6) then
				item:GossipCreateMenu(2, player, 0)
				item:GossipMenuAddItem(10, "Stormwind", 24, 0)
				item:GossipMenuAddItem(10, "Ironforge", 25, 0)
				item:GossipMenuAddItem(10, "Darnassus", 26, 0)
				item:GossipMenuAddItem(10, "The Exodar", 27, 0)
				item:GossipMenuAddItem(10, "Shattrath City", 28, 0)
				item:GossipSendMenu(player)
       end
	   
	   --Neutral Cities
	   if(intid == 7) then
				item:GossipCreateMenu(2, player, 0)
				item:GossipMenuAddItem(10, "Shattrath City", 28, 0)
				item:GossipMenuAddItem(10, "Gadgetsan", 29, 0)
				item:GossipMenuAddItem(10, "Area 52", 30, 0)
				item:GossipMenuAddItem(10, "Everlook", 31, 0)
				item:GossipMenuAddItem(10, "Booty Bay", 32, 0)
				item:GossipSendMenu(player)
       end
	   
	   --Dungeons
	   if(intid == 9) then
	   item:GossipCreateMenu(2, player, 0)
	   item:GossipMenuAddItem(10, "Hellfire Citadel", 33, 0)
	   item:GossipMenuAddItem(10, "Coilfang Reservoir", 34, 0)
	   item:GossipMenuAddItem(10, "Auchindoun", 35, 0)
	   item:GossipMenuAddItem(10, "Caverns Of Time", 36, 0)
	   item:GossipMenuAddItem(10, "Tempest Keep", 37, 0)
	   item:GossipMenuAddItem(10, "Magister's Terrace", 38, 0)
	   --item:GossipMenuAddItem(10, "Hellfire Citadel: Hellfire Ramparts", 33, 0)
	   --item:GossipMenuAddItem(10, "Hellfire Citadel: Hellfire Ramparts", 33, 0)
	   --item:GossipMenuAddItem(10, "Hellfire Citadel: The Blood Furnace", 34, 0)
	  -- item:GossipMenuAddItem(10, "Coilfang Reservoir: The Slave Pens", 35, 0)
	  -- item:GossipMenuAddItem(10, "Coilfang Reservoir: The Underbog", 36, 0)
	  -- item:GossipMenuAddItem(10, "Auchindoun: Mana-Tombs", 37, 0)
	  -- item:GossipMenuAddItem(10, "Auchindoun: Auchenai Crypts", 38, 0)
	   --item:GossipMenuAddItem(10, "Caverns Of Time: Old Hillsbrad Foothills", 39, 0)
	 --  item:GossipMenuAddItem(10, "Auchindoun: Sethekk Halls", 40, 0)
	   --item:GossipMenuAddItem(10, "Auchindoun: Shadown Labyrinth", 41, 0)
	   --item:GossipMenuAddItem(10, "Coilfang Reservoir: The Steamvault", 42, 0)
	   --item:GossipMenuAddItem(10, "Hellfire Citadel: The Shattered Halls", 43, 0)
	  -- item:GossipMenuAddItem(10, "Tempest Keep: The Botanica", 44, 0)
	  -- item:GossipMenuAddItem(10, "Tempest Keep: The Mechanar", 45, 0)
	  -- item:GossipMenuAddItem(10, "Caverns Of Time: The Black Morass", 46, 0)
	  -- item:GossipMenuAddItem(10, "Tempest Keep: The Arcatraz", 48, 0)
	   item:GossipSendMenu(player)
	   end
	   
	   --Raids
	   if(intid == 10) then
	   item:GossipCreateMenu(2, player, 0)
	   item:GossipMenuAddItem(10, "Black Temple", 49, 0)
	   item:GossipMenuAddItem(10, "Caverns of Time: Hyjal Summit", 50, 0)
	   item:GossipMenuAddItem(10, "Coilfang Reservoir: Serpentshrine Cavern", 51, 0)
	   item:GossipMenuAddItem(10, "Gruul's Lair", 52, 0)
	   item:GossipMenuAddItem(10, "Hellfire Citadel: Magtheridon's Lair", 53, 0)
	   item:GossipMenuAddItem(10, "Karazhan", 54, 0)
	   item:GossipMenuAddItem(10, "Sunwell Plateau", 55, 0)
	   item:GossipMenuAddItem(10, "Tempest Keep: The Eye", 56, 0)
	   item:GossipMenuAddItem(10, "Zul'Aman", 57, 0)
	   item:GossipSendMenu(player)
	   end
	  
	  -- Gear beroende på class+specc
	  if(intid == 11) then --Arrows för Hunter/Warrior/Rogues. Detta beror på vilket vapen de ska få börja med!
	  if class == "Warrior" then
	  item:GossipCreateMenu(2, player, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have DPS Gear", 80, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have Tank Gear", 81, 0)
	  --item:GossipMenuAddItem(10, "Black Temple", 49, 0)
	  end
	  if class == "Paladin" then
	  item:GossipCreateMenu(2, player, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have DPS Gear", 82, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have Tank Gear", 83, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have Healing Gear", 84, 0)
	  end
	  if class == "Hunter" then 
	  item:GossipCreateMenu(2, player, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have DPS Gear", 85, 0)
	  end
	  if class == "Rogue" then
	  item:GossipCreateMenu(2, player, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have DPS Gear", 86, 0)
	  end
	  if class == "Priest" then
	  item:GossipCreateMenu(2, player, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have DPS Gear", 87, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have DPS Gear", 88, 0)
	  end
	  if class == "Shaman" then
	  item:GossipCreateMenu(2, player, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have Healing Gear", 89, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have Elemental DPS Gear", 90, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have Enhancement DPS Gear", 91, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have My Totems", 92, 0)
	  end
	  if class == "Mage" then
	  item:GossipCreateMenu(2, player, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have DPS Gear", 93, 0)
	  end
	  if class == "Warlock" then
	  item:GossipCreateMenu(2, player, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have DPS Gear", 94, 0)
	  end
	  if class == "Druid" then
	  item:GossipCreateMenu(2, player, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have Feral DPS Gear", 95, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have Moonkin DPS Gear", 96, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have Healing Gear", 97, 0)
	  item:GossipMenuAddItem(10, "I Would Like To Have Feral Tank Gear", 98, 0)
	  end
	  player:GossipComplete()
	  end

	--Class Spells
	if(intid == 12) then
		item:GossipCreateMenu(2, player, 0)
        if (player:GetPlayerClass() == "Warrior") then
                item:GossipMenuAddItem(0, "Learn all Warrior Spells.", 100, 0)
				item:GossipMenuAddItem(0, "Oops I Already know All my Spells", 485, 0)
        end
		
        if (player:GetPlayerClass() == "Paladin") then
                item:GossipMenuAddItem(0, "Learn all Paladin Spells.", 101, 0)
				item:GossipMenuAddItem(0, "Oops I Already know All my Spells.", 485, 0)
        end
		
        if (player:GetPlayerClass() == "Hunter") then
                item:GossipMenuAddItem(0, "Learn all Hunter Spells.", 102, 0)
				item:GossipMenuAddItem(0, "Oops I Already know All my Spells.", 485, 0)
        end
		
        if (player:GetPlayerClass() == "Rogue") then
                item:GossipMenuAddItem(0, "Learn all Rogue Spells.", 103, 0)
				item:GossipMenuAddItem(0, "Oops I Already know All my Spells.", 485, 0)
        end
		
        if (player:GetPlayerClass() == "Priest") then
                item:GossipMenuAddItem(0, "Learn all Priest Spells.", 104, 0)
				item:GossipMenuAddItem(0, "Oops I Already know All my Spells.", 485, 0)
        end
		
        if (player:GetPlayerClass() == "Shaman") then
                item:GossipMenuAddItem(0, "Learn all Shaman Spells.", 105, 0)
				item:GossipMenuAddItem(0, "Oops I Already know All my Spells.", 485, 0)
        end
		
        if (player:GetPlayerClass() == "Mage") then
                item:GossipMenuAddItem(0, "Learn all Mage Spells.", 106, 0)
				item:GossipMenuAddItem(0, "Oops I Already know All my Spells.", 485, 0)
        end
		
        if (player:GetPlayerClass() == "Warlock") then
                item:GossipMenuAddItem(0, "Learn all Warlock Spells.", 107, 0)
				item:GossipMenuAddItem(0, "Oops I Already know All my Spells.", 485, 0)
        end
		
        if (player:GetPlayerClass() == "Druid") then
                item:GossipMenuAddItem(0, "Learn all Druid Spells.", 108, 0)
				item:GossipMenuAddItem(0, "Oops I Already know All my Spells.", 485, 0)
        end
		
        item:GossipSendMenu(player)
end
	
	--Wepaon Skills
	if(intid == 13) then
	if (player:GetPlayerClass() == "Warrior") then
                        player:LearnSpell(1180) --Daggers
						player:LearnSpell(201) --1HandSword
						player:LearnSpell(196) --1HandAxe
						player:LearnSpell(198) --1HandMace
						player:LearnSpell(202) --2Hand Sword
						player:LearnSpell(197) --2HandAxe
						player:LearnSpell(199) --2HandMace
						player:LearnSpell(227) --Staves
						player:LearnSpell(200) --Polearms
						player:LearnSpell(266) --Guns
						player:LearnSpell(264) --Bow
						player:LearnSpell(5011) --Crossbow
						player:LearnSpell(2567) --Thrown
						player:LearnSpell(15590)--Fist
						player:AdvanceSkill(162, 300) --
						player:AdvanceSkill(95, 300)
						player:AdvanceSkill(44, 300)
						player:AdvanceSkill(172, 300)
						player:AdvanceSkill(473, 300)
						player:AdvanceSkill(46, 300)
						player:AdvanceSkill(45, 300)
						player:AdvanceSkill(226, 300)
						player:AdvanceSkill(173, 300)
						player:AdvanceSkill(43, 300)
						player:AdvanceSkill(55, 300)
						player:AdvanceSkill(228, 300)
						player:AdvanceSkill(176, 300)
						player:AdvanceSkill(136, 300)
						player:AdvanceSkill(229, 300)
						player:AdvanceSkill(54, 300)
						player:AdvanceSkill(160, 300)
						player:GossipComplete()
						end
                if (player:GetPlayerClass() == "Paladin") then
                        player:LearnSpell(201) --1HandSword
						player:LearnSpell(196) --1HandAxe
						player:LearnSpell(198) --1HandMace
						player:LearnSpell(202) --2Hand Sword
						player:LearnSpell(197) --2HandAxe
						player:LearnSpell(199) --2HandMace
						player:LearnSpell(200) --Polearms
						player:AdvanceSkill(162, 300) --
						player:AdvanceSkill(95, 300)
						player:AdvanceSkill(44, 300)
						player:AdvanceSkill(172, 300)
						player:AdvanceSkill(473, 300)
						player:AdvanceSkill(46, 300)
						player:AdvanceSkill(45, 300)
						player:AdvanceSkill(226, 300)
						player:AdvanceSkill(173, 300)
						player:AdvanceSkill(43, 300)
						player:AdvanceSkill(55, 300)
						player:AdvanceSkill(228, 300)
						player:AdvanceSkill(176, 300)
						player:AdvanceSkill(136, 300)
						player:AdvanceSkill(229, 300)
						player:AdvanceSkill(54, 300)
						player:AdvanceSkill(160, 300)
						player:GossipComplete()
						end
                if (player:GetPlayerClass() == "Hunter") then
                        player:LearnSpell(1180) --Daggers
						player:LearnSpell(201) --1HandSword
						player:LearnSpell(196) --1HandAxe
						player:LearnSpell(202) --2Hand Sword
						player:LearnSpell(197) --2HandAxe
						player:LearnSpell(266) --Gun
						player:LearnSpell(264) --Bow
						player:LearnSpell(5011) --Crossbow
						player:LearnSpell(200) --Polearms
						player:LearnSpell(227) --Staves
						player:LearnSpell(15590)--Fist
						player:AdvanceSkill(162, 300) --
						player:AdvanceSkill(95, 300)
						player:AdvanceSkill(44, 300)
						player:AdvanceSkill(172, 300)
						player:AdvanceSkill(473, 300)
						player:AdvanceSkill(46, 300)
						player:AdvanceSkill(45, 300)
						player:AdvanceSkill(226, 300)
						player:AdvanceSkill(173, 300)
						player:AdvanceSkill(43, 300)
						player:AdvanceSkill(55, 300)
						player:AdvanceSkill(228, 300)
						player:AdvanceSkill(176, 300)
						player:AdvanceSkill(136, 300)
						player:AdvanceSkill(229, 300)
						player:AdvanceSkill(54, 300)
						player:AdvanceSkill(160, 300)
						player:GossipComplete()
						end
                if (player:GetPlayerClass() == "Rogue") then
                        player:LearnSpell(1180) --Daggers
						player:LearnSpell(201) -- 1HandSword
						player:LearnSpell(196) -- 1HandAxe
						player:LearnSpell(198) -- 1HandMace
						player:LearnSpell(266) -- Gun
						player:LearnSpell(264) --Bow
						player:LearnSpell(5011) --Crossbow
						player:LearnSpell(2567) --Thrown
						player:LearnSpell(15590)--Fist
						player:AdvanceSkill(162, 300) --
						player:AdvanceSkill(95, 300)
						player:AdvanceSkill(44, 300)
						player:AdvanceSkill(172, 300)
						player:AdvanceSkill(473, 300)
						player:AdvanceSkill(46, 300)
						player:AdvanceSkill(45, 300)
						player:AdvanceSkill(226, 300)
						player:AdvanceSkill(173, 300)
						player:AdvanceSkill(43, 300)
						player:AdvanceSkill(55, 300)
						player:AdvanceSkill(228, 300)
						player:AdvanceSkill(176, 300)
						player:AdvanceSkill(136, 300)
						player:AdvanceSkill(229, 300)
						player:AdvanceSkill(54, 300)
						player:AdvanceSkill(160, 300)
						player:GossipComplete()
						end
                if (player:GetPlayerClass() == "Priest") then
                        player:LearnSpell(1180) -- Daggers
						player:LearnSpell(198) -- 1HandMace
						player:LearnSpell(227) -- Staves
						player:LearnSpell(5009) -- Wand
						player:AdvanceSkill(162, 300) --
						player:AdvanceSkill(95, 300)
						player:AdvanceSkill(44, 300)
						player:AdvanceSkill(172, 300)
						player:AdvanceSkill(473, 300)
						player:AdvanceSkill(46, 300)
						player:AdvanceSkill(45, 300)
						player:AdvanceSkill(226, 300)
						player:AdvanceSkill(173, 300)
						player:AdvanceSkill(43, 300)
						player:AdvanceSkill(55, 300)
						player:AdvanceSkill(228, 300)
						player:AdvanceSkill(176, 300)
						player:AdvanceSkill(136, 300)
						player:AdvanceSkill(229, 300)
						player:AdvanceSkill(54, 300)
						player:AdvanceSkill(160, 300)
						player:GossipComplete()
						end
                if (player:GetPlayerClass() == "Shaman") then
                        player:LearnSpell(1180) --Daggers
						player:LearnSpell(198) --1HandMace
						player:LearnSpell(199) -- 2HandMace
						player:LearnSpell(196) -- 1HandAxe
						player:LearnSpell(197) --2HandAxe
						player:LearnSpell(15590)--Fist
						player:AdvanceSkill(162, 300) --
						player:AdvanceSkill(95, 300)
						player:AdvanceSkill(44, 300)
						player:AdvanceSkill(172, 300)
						player:AdvanceSkill(473, 300)
						player:AdvanceSkill(46, 300)
						player:AdvanceSkill(45, 300)
						player:AdvanceSkill(226, 300)
						player:AdvanceSkill(173, 300)
						player:AdvanceSkill(43, 300)
						player:AdvanceSkill(55, 300)
						player:AdvanceSkill(228, 300)
						player:AdvanceSkill(176, 300)
						player:AdvanceSkill(136, 300)
						player:AdvanceSkill(229, 300)
						player:AdvanceSkill(54, 300)
						player:AdvanceSkill(160, 300)
						player:GossipComplete()
						end
                if (player:GetPlayerClass() == "Mage") then
                        player:LearnSpell(201) --1HandSword
						player:LearnSpell(227) --Staves
						player:LearnSpell(5009) --Wand
						player:LearnSpell(1180)  --Daggers
						player:AdvanceSkill(162, 300)
						player:AdvanceSkill(95, 300)
						player:AdvanceSkill(44, 300)
						player:AdvanceSkill(172, 300)
						player:AdvanceSkill(473, 300)
						player:AdvanceSkill(46, 300)
						player:AdvanceSkill(45, 300)
						player:AdvanceSkill(226, 300)
						player:AdvanceSkill(173, 300)
						player:AdvanceSkill(43, 300)
						player:AdvanceSkill(55, 300)
						player:AdvanceSkill(228, 300)
						player:AdvanceSkill(176, 300)
						player:AdvanceSkill(136, 300)
						player:AdvanceSkill(229, 300)
						player:AdvanceSkill(54, 300)
						player:AdvanceSkill(160, 300)
						player:GossipComplete()
						end
                if (player:GetPlayerClass() == "Warlock") then
                        player:LearnSpell(227) --Staves
						player:LearnSpell(5009) -- Wand
						player:LearnSpell(201) --1HandSword
						player:LearnSpell(1180) --Daggers
						player:AdvanceSkill(162, 300) --
						player:AdvanceSkill(95, 300)
						player:AdvanceSkill(44, 300)
						player:AdvanceSkill(172, 300)
						player:AdvanceSkill(473, 300)
						player:AdvanceSkill(46, 300)
						player:AdvanceSkill(45, 300)
						player:AdvanceSkill(226, 300)
						player:AdvanceSkill(173, 300)
						player:AdvanceSkill(43, 300)
						player:AdvanceSkill(55, 300)
						player:AdvanceSkill(228, 300)
						player:AdvanceSkill(176, 300)
						player:AdvanceSkill(136, 300)
						player:AdvanceSkill(229, 300)
						player:AdvanceSkill(54, 300)
						player:AdvanceSkill(160, 300)
						player:GossipComplete()
						end
                if (player:GetPlayerClass() == "Druid") then
                        player:LearnSpell(227) --Staves
						player:LearnSpell(198) --1HandMace
						player:LearnSpell(1180) --Daggers
						player:LearnSpell(200) --Polearm
						player:LearnSpell(15590)--Fist
						player:LearnSpell(199) --2HandMace
						player:AdvanceSkill(162, 300) --
						player:AdvanceSkill(95, 300)
						player:AdvanceSkill(44, 300)
						player:AdvanceSkill(172, 300)
						player:AdvanceSkill(473, 300)
						player:AdvanceSkill(46, 300)
						player:AdvanceSkill(45, 300)
						player:AdvanceSkill(226, 300)
						player:AdvanceSkill(173, 300)
						player:AdvanceSkill(43, 300)
						player:AdvanceSkill(55, 300)
						player:AdvanceSkill(228, 300)
						player:AdvanceSkill(176, 300)
						player:AdvanceSkill(136, 300)
						player:AdvanceSkill(229, 300)
						player:AdvanceSkill(54, 300)
						player:AdvanceSkill(160, 300)
						player:GossipComplete()
						end
				end 

	--Talent Spells
	if(intid == 14) then
	if player:HasSpell(12294) then 	--Mortal Strike rank 1
		player:LearnSpell(30330)	--Mortal Strike rank 6
	end
	
	if player:HasSpell(23881) then	--Bloodthirst
		player:LearnSpell(30335)	-- Bloodthirst Rank 6	
	end
	
	if player:HasSpell(29801) then	--Rampage rank 1
		player:LearnSpell(30030)	-- Rampage Rank 2	
	end
	
	if player:HasSpell(20243) then	--Devastate rank 1
		player:LearnSpell(30022)	-- Devastate rank 3
	end

	if player:HasSpell(23922) then	--Shield Slam rank 1
		player:LearnSpell(30356)	-- SHield Slam rank 6
	end

	if player:HasSpell(20473) then --Holy shock rank 1
		player:LearnSpell(33072) --Holy shock rank 5
	end
	
	if player:HasSpell(31935) then -- Avengers shield rank 1
		player:LearnSpell(32700)	--Avengers shield rank 3
	end
	
	if player:HasSpell(20911) then -- blessing of sanctuary rank 1
		player:LearnSpell(27168)	-- Blessing of sanctuary rank 5
	end
	
	if player:HasSpell(20925) then -- Holy shield rank 1
		player:LearnSpell(27179)	--Holy shiled rank 4
	end
	
	if player:HasSpell(20375) then -- Seal of Command rank 1
		player:LearnSpell(27170)	--Seal of Command rank 6
	end

	if player:HasSpell(19434) then -- Aimed shot rank 1
		player:LearnSpell(27065) -- Aimed shot rank 7
	end
	
	if player:HasSpell(19506) then -- Trueshot Aura rank 1
		player:LearnSpell(27066) -- Trueshot Aura rank 4
	end
	
	if player:HasSpell(19306) then -- Counterattack rank 1
		player:LearnSpell(27067) -- Counterattack rank 4
	end
	
	if player:HasSpell(19386) then -- Wyvern Sting rank 1
		player:LearnSpell(27068) -- Wyvern Sting rank 4
	end

	if player:HasSpell(1329) then -- Mutilate rank 1
		player:LearnSpell(34413) -- Mutilate rank 4
	end
	
	if player:HasSpell(16511) then --Hemorrhage rank 1
		player:LearnSpell(26864) -- Hemrrhage rank 4
	end
	
	if player:HasSpell(14572) then --Divine Spirit rank 1
		player:LearnSpell(25312) -- Divine spirit rank 5
	end
	
	if player:HasSpell(34861) then -- Circle of Healing rank 1
		player:LearnSpell(34866) -- Circle of healing rank 5
	end
	
		if player:HasSpell(15237) then -- Holy Nove rank 1
		player:LearnSpell(25331) -- Holy Nove rank 7
	end
	
		if player:HasSpell(724) then -- Lightwell rank 1 
		player:LearnSpell(28275) -- Lightwell rank 4
	end
	
		if player:HasSpell(15407) then -- Mind Flay rank 1 
		player:LearnSpell(25387) -- Mind Flay rank 7
	end
	
			if player:HasSpell(34914) then -- vampiric touch rank 1
		player:LearnSpell(34917) -- Vampiric touch rank 3 
	end

	if player:HasSpell(974) then -- Earth shield
		player:LearnSpell(32594) --Earth shiled Rank 3
	end

	if player:HasSpell(11426) then -- Ice Barrier rank 1
		player:LearnSpell(33405) -- Ice barrier rank 6
	end
	
	if player:HasSpell(11113) then -- Blast wave rank 1
		player:LearnSpell(33933)	-- Blast wave rank 7
	end
	
	if player:HasSpell(11113) then -- Dragons Breath rank 1
		player:LearnSpell(33043)	-- Dragons breath rank 4
	end
	
	if player:HasSpell(11366) then -- Pyroblast 1
		player:LearnSpell(33938)	-- Pyroblast rank 9
	end

	if player:HasSpell(18220) then -- Dark pact rank 1
		player:LearnSpell(18937) -- Dark pact rank 2
		player:LearnSpell(18938) -- Dark pact rank 3
		player:LearnSpell(27265) -- Dark pact rank 4
	end
	
	if player:HasSpell(18265) then --Siphon Life rank 1
		player:LearnSpell(18879) --Siphon Life rank 2
		player:LearnSpell(18880) --Siphon Life rank 3
		player:LearnSpell(18881) --Siphon Life rank 4
		player:LearnSpell(27264) --Siphon Life rank 5
		player:LearnSpell(30911) --Siphon Life rank 6
	end
	
	if player:HasSpell(30108) then 	--Unstable Affliction rank 1
	player:LearnSpell(30404)		--Unstable Affliction rank 2
	player:LearnSpell(30405)		--Unstable Affliction rank 3
	end
	

	if player:HasSpell(30283) then 	--Shadowfury rank 1
	player:LearnSpell(30413)		--Shadowfury rank 2
	player:LearnSpell(30414)		--Shadowfury rank 3
	end	

	if player:HasSpell(17877) then 	--Shadowburn rank 1
	player:LearnSpell(18867)		--Shadowburn rank 2
	player:LearnSpell(18868)		--Shadowburn rank 3
	player:LearnSpell(18869)		--Shadowburn rank 4
	player:LearnSpell(18870)		--Shadowburn rank 5
	player:LearnSpell(18871)		--Shadowburn rank 6
	player:LearnSpell(27263)		--Shadowburn rank 7
	player:LearnSpell(30546)		--Shadowburn rank 8
	end		

	if player:HasSpell(17962) then 	--Conflagrate rank 1
	player:LearnSpell(18930)		--Conflagrate rank 2
	player:LearnSpell(18931)		--Conflagrate rank 3
	player:LearnSpell(18932)		--Conflagrate rank 4
	player:LearnSpell(27266)		--Conflagrate rank 5
	player:LearnSpell(30912)		--Conflagrate rank 6
	end			
	
	if player:HasSpell(16689) then --Natures grasp rank 1
		player:LearnSpell(27009)	--natures grasp rank 7
	end
	
	if player:HasSpell(5570) then -- Insect swarm rank 1
		player:LearnSpell(27013) -- Insect swarm rank 6
	end
	
	if player:HasSpell(16857) then -- Faerie Fire (feral)
		player:LearnSpell(27011) -- Faerie Fire (feral) rank 5
	end
	
	if player:HasSpell(33876) then -- mangle Cat rank 1
		player:LearnSpell(33983) -- Mangle Cat rank 3
	end
	
	if player:HasSpell(33878) then -- mangle Bear rank 1
		player:LearnSpell(33987) -- Mangle bear rank 3
	end
	
	player:GossipComplete()
	end
	
		--Outland Cities (Horde)
	if(intid == 15) then
				item:GossipCreateMenu(2, player, 0)
				item:GossipMenuAddItem(10, "Thrallnar", 58, 0)
				item:GossipMenuAddItem(10, "Falcon Watch", 59, 0)
				item:GossipMenuAddItem(10, "Cenarion Refugee", 60, 0)
				item:GossipMenuAddItem(10, "Zabra'jin", 61, 0)
				item:GossipMenuAddItem(10, "Swamprat Post", 62, 0)
				--item:GossipMenuAddItem(10, "Sporeggar", 63, 0)
				item:GossipMenuAddItem(10, "Stonebraker Hold", 64, 0)
				item:GossipMenuAddItem(10, "Garadar", 65, 0)
				item:GossipMenuAddItem(10, "Mok'Nathal Village", 66, 0)
				item:GossipMenuAddItem(10, "Thunderlord Stronghold", 67, 0)
				item:GossipMenuAddItem(10, "ShadowMoon Village", 68, 0)
				item:GossipSendMenu(player)	
	end
	
		--Outland Cities (Alliance)
	if(intid == 16) then
				item:GossipCreateMenu(2, player, 0)
				item:GossipMenuAddItem(10, "Honor Hold", 69, 0)
				item:GossipMenuAddItem(10, "Temple Of Telhamat", 70, 0)
				item:GossipMenuAddItem(10, "Cenarion Refugee", 71, 0)
				item:GossipMenuAddItem(10, "Telredor", 72, 0)
				item:GossipMenuAddItem(10, "Orebor Harborage", 73, 0)
				item:GossipMenuAddItem(10, "Sporeggar", 74, 0)
				item:GossipMenuAddItem(10, "Allerian Stronghold", 75, 0)
				item:GossipMenuAddItem(10, "Telaar", 76, 0)
				item:GossipMenuAddItem(10, "Sylvanaar", 77, 0)
				item:GossipMenuAddItem(10, "Toshley's Station", 78, 0)
				item:GossipMenuAddItem(10, "Wildhammer Stronghold", 79, 0)
				item:GossipSendMenu(player)
       end
	
	  if(intid == 20) then
				player:Teleport(1, 1371.068970, -4370.801758, 26.052483)
                player:GossipComplete()
       end	   
	   if(intid == 21) then
				player:Teleport(0, 1829.270020, 238.099991, 60.677631)
                player:GossipComplete()
       end
	   if(intid == 22) then
				player:Teleport(530, 9400.486328, -7278.376953, 14.206780)
                player:GossipComplete()
       end
	   if(intid == 23) then
				player:Teleport(1, -1304.569946, 205.285004, 68.681396)
                player:GossipComplete()
       end
	   if(intid == 24) then
				player:Teleport(0, -9165.678711,470.176544, 103.978409)
                player:GossipComplete()
       end
	   if(intid == 25) then
				player:Teleport(0, -4977.095215, -888.452942, 501.621216)
                player:GossipComplete()
       end
	   if(intid == 26) then
				player:Teleport(1, 9943.809570, 2275.350098, 1341.390015)
                player:GossipComplete()
       end	   
	   if(intid == 27) then
				player:Teleport(530, -3792.557861, -11691.3, -105.241)
                player:GossipComplete()
       end	   
		if(intid == 28) then
				player:Teleport(530, -1754.049805, 5392.927734, 0.838844)
                player:GossipComplete()
       end	   
	   if(intid == 29) then
				player:Teleport(1, -7105.560547, -3795.951904, 8.369604)
                player:GossipComplete()
       end	   
	   if(intid == 30) then
				player:Teleport(530, 3046.086426, 3685.949463, 142.517532)
                player:GossipComplete()
       end	   
	   if(intid == 31) then
				player:Teleport(1, 6724.15832, -4650.449707, 720.932251)
                player:GossipComplete()
       end   
	   if(intid == 32) then
				player:Teleport(0, -14406.599609, 419.352997, 22.389849)
                player:GossipComplete()
       end   
	   if(intid == 33) then
	   player:Teleport(530, -421.192383, 3017.921875, -16.809471)
       player:GossipComplete()
	   end
	   if(intid == 34) then
	   player:Teleport(530, 740.325439, 6866.732422, -69.129845)
       player:GossipComplete()
	   end
	   if(intid == 35) then
	   player:Teleport(530, -3363.129883, 4893.080078, -101.395088)
       player:GossipComplete()
	   end
	   if(intid == 36) then
	   player:Teleport(1, -8549.088867, -4440.741699, -212.255798)
       player:GossipComplete()
	   end
	   if(intid == 37) then
	   player:Teleport(530, 3100.797852, 1524.141479, 190.300034)
       player:GossipComplete()
	   end
	   if(intid == 38) then
	   player:Teleport(530, 12890.079102, -7317.758789, 65.518631)
       player:GossipComplete()
	   end
	   if(intid == 39) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 40) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 41) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 42) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 43) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 44) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 45) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 46) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 47) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 48) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 49) then
	   player:Teleport(530, -3642.261475, 316.585388, 34.943241)
       player:GossipComplete()
	   end
	   if(intid == 50) then
	   player:Teleport(1, -8549.088867, -4440.741699, -212.255798)
       player:GossipComplete()
	   end
	   if(intid == 51) then
	   player:Teleport(530, 740.325439, 6866.732422, -69.129845)
       player:GossipComplete()
	   end
	   if(intid == 52) then
	   player:Teleport(530, 3529.672119, 5122.387695, 4.002101)
       player:GossipComplete()
	   end
	   if(intid == 53) then
	   player:Teleport(530, -335.746033, 3120.474609, -102.927696)
       player:GossipComplete()
	   end
	   if(intid == 54) then
	   player:Teleport(0, -11121.600586, -2013.450439, 47.090012)
       player:GossipComplete()
	   end
	   if(intid == 55) then
	   player:Teleport(530, 12569.950195, -6775.292480, 15.093141)
       player:GossipComplete()
	   end
	   if(intid == 56) then
	   player:Teleport(530, 3100.797852, 1524.141479, 190.300034)
       player:GossipComplete()
	   end
	   if(intid == 57) then
	   player:Teleport(530, 6850.395508, -7956.970703, 170.000000)
       player:GossipComplete()
	   end
	   if(intid == 58) then
	   player:Teleport(530, 115.907669, 2674.329590, 83.324951)
       player:GossipComplete()
	   end
	   if(intid == 59) then
	   player:Teleport(530, -606.844971, 4100.629883, 90.402084)
       player:GossipComplete()
	   end
	   if(intid == 60) then
	   player:Teleport(530, -214.722000, 5493.040039, 21.770710)
       player:GossipComplete()
	   end
	   if(intid == 61) then
	   player:Teleport(530, 254.236374, 7847.778809, 23.533951)
       player:GossipComplete()
	   end
	   if(intid == 62) then
	   player:Teleport(530, 96.150681, 5217.713867, 22.249578)
       player:GossipComplete()
	   end
	   if(intid == 63) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 64) then
	   player:Teleport(530, -2590.806641, 4381.540039, 28.904318)
       player:GossipComplete()
	   end
	   if(intid == 65) then
	   player:Teleport(530, -1229.942627, 7342.381348, 33.960972)
       player:GossipComplete()
	   end
	   if(intid == 66) then
	   player:Teleport(530, 2192.473389, 4759.557617, 156.378510)
       player:GossipComplete()
	   end
	   if(intid == 67) then
	   player:Teleport(530, 2338.052979, 6036.637207, 142.498825)
       player:GossipComplete()
	   end
	   if(intid == 68) then
	   player:Teleport(530, -3088.197998, 2546.340088, 62.435070)
       player:GossipComplete()
	   end
	   if(intid == 69) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 70) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 71) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 72) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 73) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 74) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 75) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 76) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 77) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   if(intid == 78) then
	   player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
		if(intid == 79) then
		player:Teleport(1, 1, -4, 2)
       player:GossipComplete()
	   end
	   
	 if (intid == 100) then
	 --Warrior Spells
	 		player:AddItem(50046, 800) -- Arrows
		player:LearnSpell(750) --Plate Mail
		player:LearnSpell(674) --Dual Wield
		player:LearnSpell(3127) --Parry
        player:LearnSpell(6673) -- Battle Shout [Rank 1]
        player:LearnSpell(5242) -- Battle Shout [Rank 2]
        player:LearnSpell(6192) -- Battle Shout [Rank 3]
        player:LearnSpell(11549) -- Battle Shout [Rank 4]
        player:LearnSpell(11550) -- Battle Shout [Rank 5]
        player:LearnSpell(11551) -- Battle Shout [Rank 6]
        player:LearnSpell(25289) -- Battle Shout [Rank 7]
        player:LearnSpell(2048) -- Battle Shout [Rank 8]
        player:LearnSpell(47436) -- Battle Shout  [Rank 9]
        player:LearnSpell(18499) -- Beserker Rage
        player:LearnSpell(2458) -- Beserker Stance
        player:LearnSpell(2687) -- Bloodrage
        player:LearnSpell(1161) -- Challenging Shout
        player:LearnSpell(100) -- Charge [Rank 1]
        player:LearnSpell(6178) -- Charge [Rank 2]
        player:LearnSpell(11578) -- Charge [Rank 3]
        player:LearnSpell(845) -- Cleave [Rank 1]
        player:LearnSpell(7369) -- Cleave [Rank 2]
        player:LearnSpell(11608) -- Cleave [Rank 3]
        player:LearnSpell(11609) -- Cleave [Rank 4]
        player:LearnSpell(20569) -- Cleave [Rank 5]
        player:LearnSpell(25231) -- Cleave [Rank 6]
        player:LearnSpell(47519) -- Cleave [Rank 7]
        player:LearnSpell(47520) -- Cleave [Rank 8]
        player:LearnSpell(469) -- Commanding Shout [Rank 1]
        player:LearnSpell(47439) -- Commanding Shout [Rank 2]
        player:LearnSpell(47440) -- Commanding Shout  [Rank 3]
        player:LearnSpell(71) -- Defensive Stance
        player:LearnSpell(1160) -- Demoralizing Shout [Rank 1]
        player:LearnSpell(6190) -- Demoralizing Shout [Rank 2]
        player:LearnSpell(11554) -- Demoralizing Shout [Rank 3]
        player:LearnSpell(11555) -- Demoralizing Shout [Rank 4]
        player:LearnSpell(11556) -- Demoralizing Shout [Rank 5]
        player:LearnSpell(25202) -- Demoralizing Shout [Rank 6]
        player:LearnSpell(25203) -- Demoralizing Shout [Rank 7]
        player:LearnSpell(47437) -- Demoralizing Shout [Rank 8]
        player:LearnSpell(676) -- Disarm
        player:LearnSpell(55694) -- Enraged Regeneration
        player:LearnSpell(5308) -- Execute [Rank 1]
        player:LearnSpell(20658) -- Execute [Rank 2]
        player:LearnSpell(20660) -- Execute [Rank 3]
        player:LearnSpell(20661) -- Execute [Rank 4]
        player:LearnSpell(20662) -- Execute [Rank 5]
        player:LearnSpell(25234) -- Execute [Rank 6]
        player:LearnSpell(25236) -- Execute [Rank 7]
        player:LearnSpell(47470) -- Execute [Rank 8]
        player:LearnSpell(47471) -- Execute [Rank 9]
        player:LearnSpell(1715) -- Hamstring rank 1
		player:LearnSpell(7372) -- Hamstring rank 2
		player:LearnSpell(7373) -- Hamstring rank 3
		player:LearnSpell(25212) -- Hamstring rank 4
        player:LearnSpell(284) -- Heroic Strike [Rank 2]
		player:LearnSpell(285) -- Heroic Strike [Rank 3]
        player:LearnSpell(1608) -- Heroic Strike [Rank 4]
        player:LearnSpell(11564) -- Heroic Strike [Rank 5]
        player:LearnSpell(11565) -- Heroic Strike [Rank 6]
        player:LearnSpell(11566) -- Heroic Strike [Rank 7]
        player:LearnSpell(11567) -- Heroic Strike [Rank 8]
        player:LearnSpell(25286) -- Heroic Strike [Rank 9]
        player:LearnSpell(29707) -- Heroic Strike [Rank 10]
        player:LearnSpell(30324) -- Heroic Strike [Rank 11]
        player:LearnSpell(47449) -- Heroic STrike [Rank 12]
        player:LearnSpell(47450) -- Heroic Strike [Rank 13]
        player:LearnSpell(57755) -- Heroic Throw
        player:LearnSpell(20252) -- Intercept rank 1
		player:LearnSpell(20616) -- Intercept rank 2
		player:LearnSpell(20617) -- Intercept rank 3
		player:LearnSpell(25272) -- Intercept rank 4
		player:LearnSpell(25275) -- Intercept rank 5
        player:LearnSpell(3411) -- Intervene
        player:LearnSpell(5246) -- Intimidating Shout
        player:LearnSpell(694) -- Mocking Blow
		player:LearnSpell(7400) -- Mocking Blow rank 2
		player:LearnSpell(7402) -- Mocking Blow rank 3
		player:LearnSpell(20559) -- Mocking Blow rank 4
		player:LearnSpell(20560) -- Mocking Blow rank 5
		player:LearnSpell(25266) -- Mocking Blow rank 6
        player:LearnSpell(7384) -- Overpower rank 1
		player:LearnSpell(7887) -- Overpower rank 2
		player:LearnSpell(11584) -- Overpower rank 3
		player:LearnSpell(11585) -- Overpower rank 4
        player:LearnSpell(6552) -- Pummel
		player:LearnSpell(6554) -- Pummel rank 2
        player:LearnSpell(1719) -- Recklessness
        player:LearnSpell(772) -- Rend [Rank 1]
        player:LearnSpell(6546) -- Rend [Rank 2]
        player:LearnSpell(6547) -- Rend [Rank 3]
        player:LearnSpell(6548) -- Rend [Rank 4]
        player:LearnSpell(11572) -- Rend [Rank 5]
        player:LearnSpell(11573) -- Rend [Rank 6]
        player:LearnSpell(11574) -- Rend [Rank 7]
        player:LearnSpell(25208) -- Rend [Rank 8]
        player:LearnSpell(46845) -- Rend [Rank 9]
        player:LearnSpell(47471) -- Rend [Rank 10]
        player:LearnSpell(20230) -- Retaliation
        player:LearnSpell(6572) -- Revenge [Rank 1]
        player:LearnSpell(6574) -- Revenge [Rank 2]
        player:LearnSpell(7379) -- Revenge [Rank 3]
        player:LearnSpell(11600) -- Revenge [Rank 4]
        player:LearnSpell(11601) -- Revenge [Rank 5]
        player:LearnSpell(25288) -- Revenge [Rank 6]
        player:LearnSpell(25269) -- Revenge [Rank 7]
        player:LearnSpell(30357) -- Revenge [Rank 8]
        player:LearnSpell(57823) -- Revenge  [Rank 9]
        player:LearnSpell(64382) -- Shattering Throw
        player:LearnSpell(72) -- Shield Bash rank 1
		player:LearnSpell(1671) -- Shield Bash rank 2
		player:LearnSpell(1672) -- Shield Bash rank 3
		player:LearnSpell(29704) -- Shield Bash rank 4
        player:LearnSpell(2565) -- Shield Block
        player:LearnSpell(23922) -- Shield Slam [Rank 1]
        player:LearnSpell(23923) -- Shield Slam [Rank 2]
        player:LearnSpell(23924) -- Shield Slam [Rank 3]
        player:LearnSpell(23925) -- Shield Slam [Rank 4]
        player:LearnSpell(25258) -- Shield Slam [Rank 5]
        player:LearnSpell(30356) -- Shield Slam [Rank 6]
        player:LearnSpell(47487) -- Shield Slam [Rank 7]
        player:LearnSpell(47488) -- Shield Slam [Rank 8]
        player:LearnSpell(871) -- Shield Wall
        player:LearnSpell(1464) -- Slam [Rank 1]
        player:LearnSpell(8820) -- Slam [Rank 2]
        player:LearnSpell(11604) -- Slam [Rank 3]
        player:LearnSpell(11605) -- Slam [Rank 4]
        player:LearnSpell(25241) -- Slam [Rank 5]
        player:LearnSpell(25242) -- Slam [Rank 6]
        player:LearnSpell(47474) -- Slam [Rank 7]
        player:LearnSpell(47475) -- Slam [Rank 8]
        player:LearnSpell(23920) -- Spell Reflection
        player:LearnSpell(12678) -- Stance Mastery
        player:LearnSpell(7386) -- Sunder Armor rank 1
		player:LearnSpell(7405) -- Sunder Armor rank 2
		player:LearnSpell(8380) -- Sunder Armor rank 3
		player:LearnSpell(11596) -- Sunder Armor rank 4
		player:LearnSpell(11597) -- Sunder Armor rank 5
		player:LearnSpell(25225) -- Sunder Armor rank 6
        player:LearnSpell(355) -- Taunt
        player:LearnSpell(6343) -- Thunder Clap [Rank 1]
        player:LearnSpell(8198) -- Thunder Clap [Rank 2]
        player:LearnSpell(8204) -- Thunder Clap [Rank 3]
        player:LearnSpell(8205) -- Thunder Clap [Rank 4]
        player:LearnSpell(11580) -- Thunder Clap [Rank 5]
        player:LearnSpell(11581) -- Thunder Clap [Rank 6]
        player:LearnSpell(25264) -- Thunder Clap [Rank 7]
        player:LearnSpell(47501) -- Thunder Clap [Rank 8]
        player:LearnSpell(47502) -- Thunder Clap [Rank 9]
        player:LearnSpell(34428) -- Victory Rush
        player:LearnSpell(1680) -- Whirlwind
        player:GossipComplete()
end -- End Warrior Spells
	 if (intid == 101) then
	 --[Paladin Spells]--
		player:LearnSpell(750) --Plate Mail
		player:LearnSpell(3127) --Parry
        player:LearnSpell(31884) -- Avenging Wrath
		player:LearnSpell(19977) --Blessing of Light rank 1
		player:LearnSpell(19978) --Blessing of Light rank 2
		player:LearnSpell(19979) --Blessing of Light rank 3
		player:LearnSpell(27144) --Blessing of Light rank 4
        player:LearnSpell(19740) -- Blessing of Might [Rank 1]
        player:LearnSpell(19834) -- Blessing of Might [Rank 2]
        player:LearnSpell(19835) -- Blessing of Might [Rank 3]
        player:LearnSpell(19836) -- Blessing of Might [Rank 4]
        player:LearnSpell(19837) -- Blessing of Might [Rank 5]
        player:LearnSpell(19838) -- Blessing of Might [Rank 6]
        player:LearnSpell(25291) -- Blessing of Might [Rank 7]
        player:LearnSpell(27140) -- Blessing of Might [Rank 8]
        player:LearnSpell(48931) -- Blessing of Might [Rank 9]
        player:LearnSpell(48932) -- Blessing of Might [Rank 10]
        player:LearnSpell(19742) -- Blessing of Wisdom [Rank 1]
        player:LearnSpell(19850) -- Blessing of Wisdom [Rank 2]
        player:LearnSpell(19852) -- Blessing of Wisdom [Rank 3]
        player:LearnSpell(19853) -- Blessing of Wisdom [Rank 4]
        player:LearnSpell(19854) -- Blessing of Wisdom [Rank 5]
        player:LearnSpell(25290) -- Blessing of Wisdom [Rank 6]
		player:LearnSpell(27142) -- Blessing of Wisdom [Rank 7]
        player:LearnSpell(48935) -- Blessing of Wisdom [Rank 8]
        player:LearnSpell(48936) -- Blessing of Wisdom [Rank 9]
                local race = player:GetPlayerRace()
                if race == 10 then
                        player:LearnSpell(34767) -- Summon Charger Horde
                elseif race == 1 or race == 3 or race == 11 then
                        player:LearnSpell(23214) -- Summon Charger Alliance
                end
        player:LearnSpell(4987) -- Cleanse
        player:LearnSpell(19746) -- Concentration Aura
        player:LearnSpell(26573) -- Consecration [Rank 1]
        player:LearnSpell(20116) -- Consecration [Rank 2]
        player:LearnSpell(20922) -- Consecration [Rank 3]
        player:LearnSpell(20923) -- Consecration [Rank 4]
        player:LearnSpell(20924) -- Consecration [Rank 5]
        player:LearnSpell(27173) -- Consecration [Rank 6]
        player:LearnSpell(48818) -- Consecration [Rank 7]
        player:LearnSpell(48810) -- Consecration [Rank 8]
        player:LearnSpell(32223) -- Crusader Aura
		player:LearnSpell(465) -- Devotion Aura [Rank 1]
		player:LearnSpell(10290) -- Devotion Aura [Rank 2]
		player:LearnSpell(643) -- Devotion Aura [Rank 3]
		player:LearnSpell(10291) -- Devotion Aura [Rank 4]
		player:LearnSpell(1032) -- Devotion Aura [Rank 5]
		player:LearnSpell(10292) -- Devotion Aura [Rank 6]
		player:LearnSpell(10293) -- Devotion Aura [Rank 7]
		player:LearnSpell(27149) -- Devotion Aura [Rank 8]
        player:LearnSpell(48942) -- Devotion Aura [Rank 10]
        player:LearnSpell(19752) -- Divine Intervention
        player:LearnSpell(54428) -- Divine Plea
        player:LearnSpell(498) -- Divine Protection rank 1
		player:LearnSpell(5573) -- Divine Protection rank 2
        player:LearnSpell(642) -- Divine Shield rank 1
		player:LearnSpell(1020) -- Divine Shield rank 2
        player:LearnSpell(879) -- Exorcism [Rank 1]
        player:LearnSpell(5614) -- Exorcism [Rank 2]
        player:LearnSpell(5615) -- Exorcism [Rank 3]
        player:LearnSpell(10312) -- Exorcism [Rank 4]
        player:LearnSpell(10313) -- Exorcism [Rank 5]
        player:LearnSpell(10314) -- Exorcism [Rank 6]
        player:LearnSpell(27138) -- Exorcism [Rank 7]
        player:LearnSpell(48800) -- Exorcism [Rank 8]
        player:LearnSpell(48801) -- Exorcism [Rank 9]
		player:LearnSpell(19891) -- Fire Resistance Aura [Rank 1]
		player:LearnSpell(19899) -- Fire Resistance Aura [Rank 2]
		player:LearnSpell(19900) -- Fire Resistance Aura [Rank 3]
		player:LearnSpell(27153) -- Fire Resistance Aura [Rank 4]
        player:LearnSpell(48947) -- Fire Resistance Aura [Rank 5]
        player:LearnSpell(19750) -- Flash of Light [Rank 1]
        player:LearnSpell(19939) -- Flash of Light [Rank 2]
        player:LearnSpell(19940) -- Flash of Light [Rank 3]
        player:LearnSpell(19941) -- Flash of Light [Rank 4]
        player:LearnSpell(19942) -- Flash of Light [Rank 5]
        player:LearnSpell(19943) -- Flash of Light [Rank 6]
        player:LearnSpell(27137) -- Flash of Light [Rank 7]
        player:LearnSpell(48784) -- Flash of Light [Rank 8]
        player:LearnSpell(48785) -- Flash of Light [Rank 9]
		player:LearnSpell(19888) -- Frost Resistance Aura [Rank 1]
		player:LearnSpell(19897) -- Frost Resistance Aura [Rank 2]
		player:LearnSpell(19898) -- Frost Resistance Aura [Rank 3]
		player:LearnSpell(27152) -- Frost Resistance Aura [Rank 4]
        player:LearnSpell(48945) -- Frost Resistance Aura [Rank 5]
        --player:LearnSpell(25898) -- Greater Blessing of Kings
		player:LearnSpell(25890) --Greater Blessing of Light rank 1 
		player:LearnSpell(27145) --Greater Blessing of Light rank 2 
        player:LearnSpell(25782) -- Greater Blessing of Might [Rank 1]
        player:LearnSpell(25916) -- Greater Blessing of Might [Rank 2]
        player:LearnSpell(27141) -- Greater Blessing of Might [Rank 3]
        player:LearnSpell(48933) -- Greater Blessing of Might [Rank 4]
        player:LearnSpell(48934) -- Greater Blessing of Might [Rank 5]
        player:LearnSpell(25899) -- Greater Blessing of Sanctuary
		player:LearnSpell(27169) -- Greater Blessing of Sanctuary rank 2
        player:LearnSpell(25894) -- Greater Blessing of Wisdom [Rank 1]
        player:LearnSpell(25918) -- Greater Blessing of Wisdom [Rank 2]
        player:LearnSpell(27143) -- Greater Blessing of Wisdom [Rank 3]
        player:LearnSpell(48937) -- Greater Blessing of Wisdom [Rank 4]
        player:LearnSpell(48938) -- Greater Blessing of Wisdom [Rank 5]
		player:LearnSpell(25895) --Greater Blessing Of Salvation rank 1 
        player:LearnSpell(853) -- Hammer of Justice [Rank 1]
        player:LearnSpell(5588) -- Hammer of Justice [Rank 2]
        player:LearnSpell(5589) -- Hammer of Justice [Rank 3]
        player:LearnSpell(10308) -- Hammer of Justice [Rank 4]
        player:LearnSpell(24275) -- Hammer of Wrath [Rank 1]
        player:LearnSpell(24274) -- Hammer of Wrath [Rank 2]
        player:LearnSpell(24239) -- Hammer of Wrath [Rank 3]
        player:LearnSpell(27180) -- Hammer of Wrath [Rank 4]
        player:LearnSpell(48805) -- Hammer of Wrath [Rank 5]
        player:LearnSpell(48806) -- Hammer of Wrath [Rank 6]
        player:LearnSpell(1044) -- Hand of Freedom
        player:LearnSpell(1022) -- Hand of Protection [Rank 1]
        player:LearnSpell(5599) -- Hand of Protection [Rank 2]
        player:LearnSpell(10278) -- Hand of Protection [Rank 3]
        player:LearnSpell(62124) -- Hand of Reckoning
        player:LearnSpell(6940) -- Blessing of Sacrifice rank 1
		player:LearnSpell(20729) -- Blessing of Sacrifice rank 2
		player:LearnSpell(27147) -- Blessing of Sacrifice rank 3
		player:LearnSpell(27148) -- Blessing of Sacrifice rank 4
        player:LearnSpell(1038) -- Hand of Salvation
        player:LearnSpell(639) -- Holy Light [Rank 2]
        player:LearnSpell(647) -- Holy Light [Rank 3]
        player:LearnSpell(1026) -- Holy Light [Rank 4]
        player:LearnSpell(1042) -- Holy Light [Rank 5]
        player:LearnSpell(3472) -- Holy Light [Rank 6]
        player:LearnSpell(10328) -- Holy Light [Rank 7]
        player:LearnSpell(10329) -- Holy Light [Rank 8]
        player:LearnSpell(25292) -- Holy Light [Rank 9]
        player:LearnSpell(27135) -- Holy Light [Rank 10]
        player:LearnSpell(27136) -- Holy Light [Rank 11]
        player:LearnSpell(48781) -- Holy Light [Rank 12]
        player:LearnSpell(48782) -- Holy Light [Rank 13]
        player:LearnSpell(2812) -- Holy Wrath [Rank 1]
        player:LearnSpell(10318) -- Holy Wrath [Rank 2]
        player:LearnSpell(27139) -- Holy Wrath [Rank 3]
        player:LearnSpell(48816) -- Holy Wrath [Rank 4]
        player:LearnSpell(48817) -- Holy Wrath [Rank 5]
        player:LearnSpell(53407) -- Judgement of Justice
        player:LearnSpell(20271) -- Judgement of Light
        player:LearnSpell(53408) -- Judgement of Wisdom
        player:LearnSpell(633) -- Lay on Hands [Rank 1]
        player:LearnSpell(2800) -- Lay on Hands [Rank 2]        
        player:LearnSpell(10310) -- Lay on Hands [Rank 3]
        player:LearnSpell(27154) -- Lay on Hands [Rank 4]
        player:LearnSpell(48788) -- Lay on Hands [Rank 5]
        player:LearnSpell(1152) -- Purify
        player:LearnSpell(7328) -- Redemption [Rank 1]
        player:LearnSpell(10322) -- Redemption [Rank 2]
        player:LearnSpell(10324) -- Redemption [Rank 3]
        player:LearnSpell(20772) -- Redemption [Rank 4]
        player:LearnSpell(20773) -- Redemption [Rank 5]
        player:LearnSpell(48949) -- Redemption [Rank 6]
        player:LearnSpell(48950) -- Redemption [Rank 7]
		player:LearnSpell(7294) -- Retribution Aura [Rank 1]
		player:LearnSpell(10298) -- Retribution Aura [Rank 2]
		player:LearnSpell(10299) -- Retribution Aura [Rank 3]
		player:LearnSpell(10300) -- Retribution Aura [Rank 4]
		player:LearnSpell(10301) -- Retribution Aura [Rank 5]
		player:LearnSpell(27150) -- Retribution Aura [Rank 6]
        player:LearnSpell(54043) -- Retribution Aura [Rank 7]
        player:LearnSpell(31789) -- Righteous Defense
        player:LearnSpell(25780) -- Righteous Fury
        player:LearnSpell(53601) -- Sacred Shield [Rank 1]
		player:LearnSpell(21082) -- Seal of The Crusader rank 1
		player:LearnSpell(20162) -- Seal of The Crusader rank 2
		player:LearnSpell(20305) -- Seal of The Crusader rank 3
		player:LearnSpell(20306) -- Seal of The Crusader rank 4
		player:LearnSpell(20307) -- Seal of The Crusader rank 5
		player:LearnSpell(20308) -- Seal of The Crusader rank 6
		player:LearnSpell(27158) -- Seal of The Crusader rank 7
		player:LearnSpell(31892) -- Seal of Blood
        player:LearnSpell(20164) -- Seal of Justice
		player:LearnSpell(31895) -- Seal of Justice rank 2
        player:LearnSpell(20165) -- Seal of Light rank 1
		player:LearnSpell(20347) -- Seal of Light rank 2
		player:LearnSpell(20348) -- Seal of Light rank 3
		player:LearnSpell(20349) -- Seal of Light rank 4
		player:LearnSpell(27160) -- Seal of Light rank 5
        player:LearnSpell(21084) -- Seal of Righteousness rank 1
		player:LearnSpell(20287) -- Seal of Righteousness rank 2
		player:LearnSpell(20288) -- Seal of Righteousness rank 3 
		player:LearnSpell(20289) -- Seal of Righteousness rank 4
		player:LearnSpell(20290) -- Seal of Righteousness rank 5 
		player:LearnSpell(20291) -- Seal of Righteousness rank 6
		player:LearnSpell(20292) -- Seal of Righteousness rank 7
		player:LearnSpell(20293) -- Seal of Righteousness rank 8
		player:LearnSpell(27155) -- Seal of Righteousness rank 9
        player:LearnSpell(20166) -- Seal of Wisdom rank 1
		player:LearnSpell(20356) -- Seal of Wisdom rank 2
		player:LearnSpell(20357) -- Seal of Wisdom rank 3
		player:LearnSpell(27166) -- Seal of Wisdom rank 6940
		player:LearnSpell(19876) -- Shadow Resistance Aura [Rank 1]
		player:LearnSpell(19895) -- Shadow Resistance Aura [Rank 2]
		player:LearnSpell(19896) -- Shadow Resistance Aura [Rank 3]
		player:LearnSpell(27151) -- Shadow Resistance Aura [Rank 4]
        player:LearnSpell(48943) -- Shadow Resistance Aura [Rank 5]
        player:LearnSpell(5502) -- Sense Undead
        player:LearnSpell(53600) -- Shield of Righteousness [Rank 1]
        player:LearnSpell(61411) -- Shield of Righteousness [Rank 2]
		player:LearnSpell(31785) -- Spiritual Attunement [Rank 2]
		player:LearnSpell(33776) -- Spiritual Attunement [Rank 2]
        player:LearnSpell(10326) -- Turn Evil
		player:LearnSpell(2878) -- Turn Undead rank 1
		player:LearnSpell(5627) -- Turn Undead rank 2
                local race = player:GetPlayerRace()
                if race == 10 then
                        player:LearnSpell(34769) -- Summon Warhorse Horde
                elseif race == 1 or race == 3 or race == 11 then
                        player:LearnSpell(13819) -- Summon Warhorse Alliance
                end
        player:GossipComplete()
end -- End Paladin Spells
	 if (intid == 102) then
--[Hunter Spells]--
		player:AddItem(50046, 800) -- Arrows
		player:LearnSpell(8737) -- Mail
		player:LearnSpell(674) --Dual Wield
		player:LearnSpell(3127) --Parry
        player:LearnSpell(3044) -- Arcane Shot [Rank 1]
        player:LearnSpell(14281) -- Arcane Shot [Rank 2]
        player:LearnSpell(14281) -- Arcane Shot [Rank 2]
        player:LearnSpell(14282) -- Arcane Shot [Rank 3]
        player:LearnSpell(14283) -- Arcane Shot [Rank 4]
        player:LearnSpell(14284) -- Arcane Shot [Rank 5]
        player:LearnSpell(14285) -- Arcane Shot [Rank 6]
        player:LearnSpell(14286) -- Arcane Shot [Rank 7]
        player:LearnSpell(14287) -- Arcane Shot [Rank 8]
        player:LearnSpell(27019) -- Arcane Shot [Rank 9]
        player:LearnSpell(49044) -- Arcane Shot [Rank 10]
        player:LearnSpell(49045) -- Arcane Shot [Rank 11]
        player:LearnSpell(13161) -- Aspect of the Beast
        player:LearnSpell(5118) -- Aspect of the Cheetah
        player:LearnSpell(61846) -- Aspect of the Dragonhawk [Rank 1]
        player:LearnSpell(61847) -- Aspect of the Dragonhawk [Rank 2]
        player:LearnSpell(13165) -- Aspect of the Hawk [Rank 1]
        player:LearnSpell(14318) -- Aspect of the Hawk [Rank 2]
        player:LearnSpell(14319) -- Aspect of the Hawk [Rank 3]
        player:LearnSpell(14320) -- Aspect of the Hawk [Rank 4]
        player:LearnSpell(14321) -- Aspect of the Hawk [Rank 5]
        player:LearnSpell(14322) -- Aspect of the Hawk [Rank 6]
        player:LearnSpell(25296) -- Aspect of the Hawk [Rank 7]
        player:LearnSpell(27044) -- Aspect of the Hawk [Rank 8]
        player:LearnSpell(13163) -- Aspect of the Monkey
        player:LearnSpell(13159) -- Aspect of the Pack
        player:LearnSpell(34074) -- Aspect of the Viper
        player:LearnSpell(20043) -- Aspect of the Wild [Rank 1]
        player:LearnSpell(20190) -- Aspect of the Wild [Rank 2]
        player:LearnSpell(27045) -- Aspect of the Wild [Rank 3]
        player:LearnSpell(49071) -- Aspect of the Wild [Rank 4]
        player:LearnSpell(1462) -- Beast Lore
        player:LearnSpell(883) -- Call Pet
        player:LearnSpell(62757) -- Call Stabled Pet
        player:LearnSpell(5116) -- Concussive Shot
        player:LearnSpell(19263) -- Deterrence
        player:LearnSpell(781) -- Disengage rank 1
		player:LearnSpell(14272) -- Disengage rank 2
		player:LearnSpell(14273) -- Disengage rank 3
        player:LearnSpell(2641) -- Dismiss Pet
        player:LearnSpell(20736) -- Distracting Shot [Rank 1]
		player:LearnSpell(14274) -- Distracting Shot [Rank 2]
		player:LearnSpell(15629) -- Distracting Shot [Rank 3]
		player:LearnSpell(15630) -- Distracting Shot [Rank 4]
		player:LearnSpell(15631) -- Distracting Shot [Rank 5]
		player:LearnSpell(15632) -- Distracting Shot [Rank 6]
        player:LearnSpell(6197) -- Eagle Eye
        player:LearnSpell(13813) -- Explosive Trap [Rank 1]
        player:LearnSpell(14316) -- Explosive Trap [Rank 2]
        player:LearnSpell(14317) -- Explosive Trap [Rank 3]
        player:LearnSpell(27025) -- Explosive Trap [Rank 4]
        player:LearnSpell(49066) -- Explosive Trap [Rank 5]
        player:LearnSpell(49067) -- Explosive Trap [Rank 6]
        player:LearnSpell(1002) -- Eyes of the Beast
        player:LearnSpell(6991) -- Feed Pet
        player:LearnSpell(5384) -- Feign Death
        player:LearnSpell(1543) -- Flare
        player:LearnSpell(60192) -- Freezing Arrow [Rank 1]
        player:LearnSpell(1499) -- Freezing Trap [Rank 1]
        player:LearnSpell(14310) -- Freezing Trap [Rank 2]
        player:LearnSpell(14311) -- Freezing Trap [Rank 3]
        player:LearnSpell(13809) -- Frost Trap
        player:LearnSpell(1130) -- Hunter's Mark [Rank 1]
        player:LearnSpell(14323) -- Hunter's Mark [Rank 2]
        player:LearnSpell(14324) -- Hunter's Mark [Rank 3]
        player:LearnSpell(14325) -- Hunter's Mark [Rank 4]
        player:LearnSpell(53338) -- Hunter's Mark [Rank 5]
        player:LearnSpell(13795) -- Immolation Trap [Rank 1]
        player:LearnSpell(14302) -- Immolation Trap [Rank 2]
        player:LearnSpell(14303) -- Immolation Trap [Rank 3]
        player:LearnSpell(14304) -- Immolation Trap [Rank 4]
        player:LearnSpell(14305) -- Immolation Trap [Rank 5]
        player:LearnSpell(27023) -- Immolation Trap [Rank 6]
        player:LearnSpell(49055) -- Immolation Trap [Rank 7]
        player:LearnSpell(49056) -- Immolation Trap [Rank 8]
        player:LearnSpell(34026) -- Kill Command
        player:LearnSpell(53351) -- Kill Shot [Rank 1]
        player:LearnSpell(61005) -- Kill Shot [Rank 2]
        player:LearnSpell(61006) -- Kill Shot [Rank 3]
        player:LearnSpell(53271) -- Master's Call
        player:LearnSpell(136) -- Mend Pet [Rank 1]
        player:LearnSpell(3111) -- Mend Pet [Rank 2]
        player:LearnSpell(3661) -- Mend Pet [Rank 3]
        player:LearnSpell(3662) -- Mend Pet [Rank 4]
        player:LearnSpell(13542) -- Mend Pet [Rank 5]
        player:LearnSpell(13543) -- Mend Pet [Rank 6]
        player:LearnSpell(13544) -- Mend Pet [Rank 7]
        player:LearnSpell(27046) -- Mend Pet [Rank 8]
        player:LearnSpell(48989) -- Mend Pet [Rank 9]
        player:LearnSpell(48990) -- Mend Pet [Rank 10]
        player:LearnSpell(34477) -- Misdirection
        player:LearnSpell(1495) -- Mongoose Bite [Rank 1]
        player:LearnSpell(14269) -- Mongoose Bite [Rank 2]
        player:LearnSpell(14270) -- Mongoose Bite [Rank 3]
        player:LearnSpell(14271) -- Mongoose Bite [Rank 4]
        player:LearnSpell(36916) -- Mongoose Bite [Rank 5]
        player:LearnSpell(53339) -- Mongoose Bite [Rank 6]
        player:LearnSpell(2643) -- Multi-Shot [Rank 1]
        player:LearnSpell(14288) -- Multi-Shot [Rank 2]
        player:LearnSpell(14289) -- Multi Shot [Rank 3]
        player:LearnSpell(14290) -- Multi-Shot [Rank 4]
        player:LearnSpell(25294) -- Multi-Shot [Rank 5]
        player:LearnSpell(27021) -- Multi-Shot [Rank 6]
        player:LearnSpell(49047) -- Multi-Shot [Rank 7]
        player:LearnSpell(49048) -- Multi-Shot [Rank 8]
        player:LearnSpell(3045) -- Rapid Fire
        player:LearnSpell(14260) -- Raptor Strike [Rank 2]
        player:LearnSpell(14261) -- Raptor Strike [Rank 3]
        player:LearnSpell(14262) -- Raptor Strike [Rank 4]
        player:LearnSpell(14263) -- Raptor Strike [Rank 5]
        player:LearnSpell(14264) -- Raptor Strike [Rank 6]
        player:LearnSpell(14265) -- Raptor Strike [Rank 7]
        player:LearnSpell(14266) -- Raptor Strike [Rank 8]
        player:LearnSpell(27014) -- Raptor Strike [Rank 9]
        player:LearnSpell(48995) -- Raptor Strike [Rank 10]
        player:LearnSpell(48996) -- Raptor Strike [Rank 11]
        player:LearnSpell(982) -- Revive Pet
        player:LearnSpell(1513) -- Scare Beast [Rank 1]
        player:LearnSpell(14326) -- Scare Beast [Rank 2]
        player:LearnSpell(14327) -- Scare Beast [Rank 3]
        player:LearnSpell(3043) -- Scorpid Sting
        player:LearnSpell(1978) -- Serpent Sting [Rank 1]
        player:LearnSpell(13549) -- Serpent Sting [Rank 2]
        player:LearnSpell(13550) -- Serpent Sting [Rank 3]
        player:LearnSpell(13551) -- Serpent Sting [Rank 4]
        player:LearnSpell(13552) -- Serpent Sting [Rank 5]
        player:LearnSpell(13553) -- Serpent Sting [Rank 6]
        player:LearnSpell(13554) -- Serpent Sting [Rank 7]
        player:LearnSpell(13555) -- Serpent Sting [Rank 8]
        player:LearnSpell(25295) -- Serpent Sting [Rank 9]
        player:LearnSpell(27016) -- Serpent Sting [Rank 10]
        player:LearnSpell(49000) -- Serpent Sting [Rank 11]
        player:LearnSpell(49001) -- Serpent Sting [Rank 12]
        player:LearnSpell(34600) -- Snake Trap
        player:LearnSpell(56641) -- Steady Shot [Rank 1]
        player:LearnSpell(34120) -- Steady Shot [Rank 2]
        player:LearnSpell(49051) -- Steady Shot [Rank 3]
        player:LearnSpell(49052) -- Steady Shot [Rank 4]
        player:LearnSpell(1515) -- Tame Beast
        player:LearnSpell(1494) -- Track Beasts
        player:LearnSpell(19878) -- Track Demons
        player:LearnSpell(19879) -- Track Dragonkin
        player:LearnSpell(19880) -- Track Elementals
        player:LearnSpell(19882) -- Track Giants
        player:LearnSpell(19885) -- Track Hidden
        player:LearnSpell(19883) -- Track Humanoids
        player:LearnSpell(19884) -- Track Undead
        player:LearnSpell(19801) -- Tranquilizing Shot
        player:LearnSpell(3034) -- Viper Sting rank 1
		player:LearnSpell(14279) -- Viper Sting rank 2
		player:LearnSpell(14280) -- Viper Sting rank 3
        player:LearnSpell(1510) -- Volley [Rank 1]
        player:LearnSpell(14294) -- Volley [Rank 2]
        player:LearnSpell(14295) -- Volley [Rank 3]
        player:LearnSpell(27022) -- Volley [Rank 4]
        player:LearnSpell(58431) -- Volley [Rank 5]
        player:LearnSpell(58434) -- Volley [Rank 6]
        player:LearnSpell(2974) -- Wing Clip rank 1
		player:LearnSpell(14267) -- Wing Clip rank 2
		player:LearnSpell(14268) -- Wing Clip rank 3
        player:GossipComplete()
end -- End Hunter Spells
	 if (intid == 103) then
	 --[Rogue Spells]--
	 		player:AddItem(50046, 800) -- Arrows
		player:LearnSpell(674) --Dual Wield
		player:LearnSpell(3127) --Parry
        player:LearnSpell(8676) -- Ambush [Rank 1]
        player:LearnSpell(8724) -- Ambush [Rank 2]
        player:LearnSpell(8725) -- Ambush [Rank 3]
        player:LearnSpell(11267) -- Ambush [Rank 4]
        player:LearnSpell(11268) -- Ambush [Rank 5]
        player:LearnSpell(11269) -- Ambush [Rank 6]
        player:LearnSpell(27441) -- Ambush [Rank 7]
        player:LearnSpell(48689) -- Ambush [Rank 8]
        player:LearnSpell(48690) -- Ambush [Rank 9]
        player:LearnSpell(48691) -- Ambush [Rank 10]
        player:LearnSpell(53) -- Backstab [Rank 1]
        player:LearnSpell(2589) -- Backstab [Rank 2]
        player:LearnSpell(2590) -- Backstab [Rank 3]
        player:LearnSpell(2591) -- Backstab [Rank 4]
        player:LearnSpell(8721) -- Backstab [Rank 5]
        player:LearnSpell(11279) -- Backstab [Rank 6]
        player:LearnSpell(11280) -- Backstab [Rank 7]
        player:LearnSpell(11281) -- Backstab [Rank 8]
        player:LearnSpell(25300) -- Backstab [Rank 9]
        player:LearnSpell(26863) -- Backstab [Rank 10]
        player:LearnSpell(48656) -- Backstab [Rank 11]
        player:LearnSpell(48657) -- Backstab [Rank 12]
        player:LearnSpell(2094) -- Blind
        player:LearnSpell(1833) -- Cheap Shot
        player:LearnSpell(31224) -- Cloak of Shadows
        player:LearnSpell(26679) -- Deadly Throw [Rank 1]
        player:LearnSpell(48673) -- Deadly Throw [Rank 2]
        player:LearnSpell(48674) -- Deadly Throw [Rank 3]
        player:LearnSpell(2836) -- Detect Traps
        player:LearnSpell(1842) -- Disarm Trap
        player:LearnSpell(51722) -- Dismantle
        player:LearnSpell(1725) -- Distract
        player:LearnSpell(32645) -- Envenom [Rank 1]
        player:LearnSpell(32684) -- Envenom [Rank 2]
        player:LearnSpell(57992) -- Envenom [Rank 3]
        player:LearnSpell(57993) -- Envenom [Rank 4]
        player:LearnSpell(5277) -- Evasion [Rank 1]
        player:LearnSpell(26669) -- Evasion [Rank 2]
        player:LearnSpell(6760) -- Eviscerate [Rank 2]
        player:LearnSpell(6761) -- Eviscerate [Rank 3]
        player:LearnSpell(6762) -- Eviscerate [Rank 4]
        player:LearnSpell(8623) -- Eviscerate [Rank 5]
        player:LearnSpell(8624) -- Eviscerate [Rank 6]
        player:LearnSpell(11299) -- Eviscerate [Rank 7]
        player:LearnSpell(11300) -- Eviscerate [Rank 8]
        player:LearnSpell(31016) -- Eviscerate [Rank 9]
        player:LearnSpell(26865) -- Eviscerate [Rank 10]
        player:LearnSpell(48667) -- Eviscerate [Rank 11]
        player:LearnSpell(48668) -- Eviscerate [Rank 12]
        player:LearnSpell(8647) -- Expose Armor rank1
		player:LearnSpell(8649) -- Expose Armor rank 2
		player:LearnSpell(8650) -- Expose Armor rank 3
		player:LearnSpell(11197) -- Expose Armor rank 4
		player:LearnSpell(11198) -- Expose Armor rank 5
		player:LearnSpell(26866) -- Expose Armor rank 6
        player:LearnSpell(51723) -- Fan of Knives
        player:LearnSpell(1966) -- Feint [Rank 1]
        player:LearnSpell(6768) -- Feint [Rank 2]
        player:LearnSpell(8637) -- Feint [Rank 3]
        player:LearnSpell(11303) -- Feint [Rank 4]
        player:LearnSpell(25302) -- Feint [Rank 5]
        player:LearnSpell(27448) -- Feint [Rank 6]
        player:LearnSpell(48658) -- Feint [Rank 7]
        player:LearnSpell(48659) -- Feint [Rank 8]
        player:LearnSpell(703) -- Garrote [Rank 1]
        player:LearnSpell(8631) -- Garrote [Rank 2]
        player:LearnSpell(8632) -- Garrote [Rank 3]
        player:LearnSpell(8633) -- Garrote [Rank 4]
        player:LearnSpell(11289) -- Garrote [Rank 5]
        player:LearnSpell(11290) -- Garrote [Rank 6]
        player:LearnSpell(26839) -- Garrote [Rank 7]
        player:LearnSpell(26884) -- Garrote [Rank 8]
        player:LearnSpell(48675) -- Garrote [Rank 9]
        player:LearnSpell(48676) -- Garrote [Rank 10]
        player:LearnSpell(1776) -- Gouge rank 1
		player:LearnSpell(1777) -- Gouge rank 2
		player:LearnSpell(8629) -- Gouge rank 3
		player:LearnSpell(11285) -- Gouge rank 4
		player:LearnSpell(11286) -- Gouge rank 5
		player:LearnSpell(38764) -- Gouge rank 6
        player:LearnSpell(1766) -- Kick rank 1
		player:LearnSpell(1767) -- Kick rank 2
		player:LearnSpell(1768) -- Kick rank 3
		player:LearnSpell(1769) -- Kick rank 4
		player:LearnSpell(38768) -- Kick rank 5
        player:LearnSpell(408) -- Kidney Shot [Rank 1]
        player:LearnSpell(8643) -- Kidney Shot [Rank 2]
        player:LearnSpell(1804) -- Pick Lock
        player:LearnSpell(921) -- Pick Pocket
		
		player:LearnSpell(2842) -- Poisons OBS
		player:LearnSpell(3420) -- Crippling poison rank 1 OBS
		player:LearnSpell(3421) -- Crippling poison rank 1 OBS
		player:LearnSpell(5763) -- Mind-numbing poison rank 1 OBS
		player:LearnSpell(8694) -- Mind-numbing poison rank 2 OBS
		player:LearnSpell(11400) -- Mind-numbing poison rank 3 OBS
		player:LearnSpell(2835) -- Deadly poison rank 1 OBS
		player:LearnSpell(2837) -- Deadly poison rank 2 OBS
		player:LearnSpell(11357) -- Deadly poison rank 3 OBS
		player:LearnSpell(11358) -- Deadly poison rank 4 OBS
		player:LearnSpell(25347) -- Deadly poison rank 5 OBS
		player:LearnSpell(26969) -- Deadly poison rank 6 OBS
		player:LearnSpell(27282) -- Deadly poison rank 7 OBS
		player:LearnSpell(13220) -- Wound poison  1 OBS
		player:LearnSpell(13228) -- Wound poison  2 OBS
		player:LearnSpell(13229) -- Wound poison  3 OBS
		player:LearnSpell(13230) -- Wound poison  4 OBS
		player:LearnSpell(27283) -- Wound poison  5 OBS
		-- Var är instant poison rank 1?
		player:LearnSpell(8687) -- Instant Poison  2 OBS
		player:LearnSpell(8691) -- Instant poison  3 OBS
		player:LearnSpell(11341) -- Instant poison  4 OBS
		player:LearnSpell(11342) -- Instant poison  5 OBS
		player:LearnSpell(11343) -- Instant poison  6 OBS
		player:LearnSpell(26892) -- Instant poison  7 OBS
		player:LearnSpell(26786) --Anesthetic Poison   OBS
		
        player:LearnSpell(1943) -- Rupture [Rank 1]
        player:LearnSpell(8639) -- Rupture [Rank 2]
        player:LearnSpell(8640) -- Rupture [Rank 3]
        player:LearnSpell(11273) -- Rupture [Rank 4]
        player:LearnSpell(11274) -- Rupture [Rank 5]
        player:LearnSpell(11275) -- Rupture [Rank 6]
        player:LearnSpell(26867) -- Rupture [Rank 7]
        player:LearnSpell(48671) -- Rupture [Rank 8]
        player:LearnSpell(48672) -- Rupture [Rank 9]
        player:LearnSpell(1860) -- Safe Fall
        player:LearnSpell(6770) -- Sap [Rank 1]
        player:LearnSpell(2070) -- Sap [Rank 2]
        player:LearnSpell(11297) -- Sap [Rank 3]
        player:LearnSpell(51724) -- Sap [Rank 4]
        player:LearnSpell(5938) -- Shiv
        player:LearnSpell(1757) -- Sinister Strike [Rank 2]
        player:LearnSpell(1758) -- Sinister Strike [Rank 3]
        player:LearnSpell(1759) -- Sinister Strike [Rank 4]
        player:LearnSpell(1760) -- Sinister Strike [Rank 5]
        player:LearnSpell(8621) -- Sinister Strike [Rank 6]
        player:LearnSpell(11293) -- Sinister Strike [Rank 7]
        player:LearnSpell(11294) -- Sinister Strike [Rank 8]
        player:LearnSpell(26861) -- Sinister Strike [Rank 9]
        player:LearnSpell(26862) -- Sinister Strike [Rank 10]
        player:LearnSpell(48637) -- Sinister Strike [Rank 11]
        player:LearnSpell(48638) -- Sinister Strike [Rank 12]
        player:LearnSpell(5171) -- Slice and Dice [Rank 1]
        player:LearnSpell(6774) -- Slice and Dice [Rank 2]
        player:LearnSpell(2983) -- Sprint [Rank 1]
        player:LearnSpell(8696) -- Sprint [Rank 2]
        player:LearnSpell(11305) -- Sprint [Rank 3]
		player:LearnSpell(1784) -- Stealth [Rank 1]
		player:LearnSpell(1785) -- Stealth [Rank 2]
		player:LearnSpell(1786) -- Stealth [Rank 3]
        player:LearnSpell(1787) -- Stealth [Rank 4]
        player:LearnSpell(57934) -- Tricks of the Trade
        player:LearnSpell(1856) -- Vanish [Rank 1]
        player:LearnSpell(1857) -- Vanish [Rank 2]
        player:LearnSpell(26889) -- Vanish [Rank 3]
        player:GossipComplete()
end -- End Rogue Spells
	 if (intid == 104) then
	--[Priest Spells]--
        player:LearnSpell(552) -- Abolish Disease
        player:LearnSpell(32546) -- Binding Heal [Rank 1]
        player:LearnSpell(48119) -- Binding Heal [Rank 2]
        player:LearnSpell(48120) -- Binding Heal [Rank 2]
        player:LearnSpell(528) -- Cure Disease
        player:LearnSpell(527) -- Dispel Magic [Rank 1]
        player:LearnSpell(988) -- Dispel Magic [Rank 2]
        player:LearnSpell(64843) -- Divine Hymn
        player:LearnSpell(14752) -- Divine Spirit [Rank 1]
        player:LearnSpell(14818) -- Divine Spirit [Rank 2]
        player:LearnSpell(14819) -- Divine Spirit [Rank 3]
        player:LearnSpell(27841) -- Divine Spirit [Rank 4]
        player:LearnSpell(25312) -- Divine Spirit [Rank 5]
        player:LearnSpell(48073) -- Divine Spirit [Rank 6]
        player:LearnSpell(586) -- Fade rank 1
		player:LearnSpell(9578) -- Fade rank 2
		player:LearnSpell(9579) -- Fade rank 3
		player:LearnSpell(9592) -- Fade rank 4
		player:LearnSpell(10941) -- Fade rank 5
		player:LearnSpell(10942) -- Fade rank 6
		player:LearnSpell(25429) -- Fade rank 7
        player:LearnSpell(6346) -- Fear Ward
        player:LearnSpell(2061) -- Flash Heal [Rank 1]
        player:LearnSpell(9472) -- Flash Heal [Rank 2]
        player:LearnSpell(9473) -- Flash Heal [Rank 3]
        player:LearnSpell(9474) -- Flash Heal [Rank 4]
        player:LearnSpell(10915) -- Flash Heal [Rank 5]
        player:LearnSpell(10916) -- Flash Heal [Rank 6]
        player:LearnSpell(10917) -- Flash Heal [Rank 7]
        player:LearnSpell(25233) -- Flash Heal [Rank 8]
        player:LearnSpell(25235) -- Flash Heal [Rank 9]
        player:LearnSpell(48070) -- Flash Heal [Rank 10]
        player:LearnSpell(48071) -- Flash Heal [Rank 11]
        player:LearnSpell(2060) -- Greater Heal [Rank 1]
        player:LearnSpell(10963) -- Greater Heal [Rank 2]
        player:LearnSpell(10964) -- Greater Heal [Rank 3]
        player:LearnSpell(10965) -- Greater Heal [Rank 4]
        player:LearnSpell(25314) -- Greater Heal [Rank 5]
        player:LearnSpell(25210) -- Greater Heal [Rank 6]
        player:LearnSpell(25213) -- Greater Heal [Rank 7]
        player:LearnSpell(48062) -- Greater Heal [Rank 8]
        player:LearnSpell(48063) -- Greater Heal [Rank 9]
        player:LearnSpell(2054) -- Heal [Rank 1]
        player:LearnSpell(2055) -- Heal [Rank 2]
        player:LearnSpell(6063) -- Heal [Rank 3]
        player:LearnSpell(6064) -- Heal [Rank 4]
        player:LearnSpell(14914) -- Holy Fire [Rank 1]
        player:LearnSpell(15262) -- Holy Fire [Rank 2]
        player:LearnSpell(15263) -- Holy Fire [Rank 3]
        player:LearnSpell(15264) -- Holy Fire [Rank 4]
        player:LearnSpell(15265) -- Holy Fire [Rank 5]
        player:LearnSpell(15266) -- Holy Fire [Rank 6]
        player:LearnSpell(15267) -- Holy Fire [Rank 7]
        player:LearnSpell(15261) -- Holy Fire [Rank 8]
        player:LearnSpell(25384) -- Holy Fire [Rank 9]
        player:LearnSpell(48134) -- Holy Fire [Rank 10]
        player:LearnSpell(48135) -- Holy Fire [Rank 11]
        player:LearnSpell(15237) -- Holy Nova [Rank 1]
        player:LearnSpell(15430) -- Holy Nova [Rank 2]
        player:LearnSpell(15431) -- Holy Nova [Rank 3]
        player:LearnSpell(27799) -- Holy Nova [Rank 4]
        player:LearnSpell(27800) -- Holy Nova [Rank 5]
        player:LearnSpell(27801) -- Holy Nova [Rank 6]
        player:LearnSpell(25331) -- Holy Nova [Rank 7]
        player:LearnSpell(48077) -- Holy Nova [Rank 8]
        player:LearnSpell(48078) -- Holy Nova [Rank 9]
        player:LearnSpell(64901) -- Hymn of Hope
        player:LearnSpell(588) -- Inner Fire [Rank 1]
        player:LearnSpell(7128) -- Inner Fire [Rank 2]
        player:LearnSpell(602) -- Inner Fire [Rank 3]
        player:LearnSpell(1006) -- Inner Fire [Rank 4]
        player:LearnSpell(10951) -- Inner Fire [Rank 5]
        player:LearnSpell(10952) -- Inner Fire [Rank 6]
        player:LearnSpell(25431) -- Inner Fire [Rank 7]
        player:LearnSpell(48040) -- Inner Fire [Rank 8]
        player:LearnSpell(48168) -- Inner Fire [Rank 9]
        player:LearnSpell(2052) -- Lesser Heal [Rank 2]
        player:LearnSpell(2053) -- Lesser Heal [Rank 3]
        player:LearnSpell(1706) -- Levitate
        player:LearnSpell(8129) -- Mana Burn rank 1
		player:LearnSpell(8131) -- Mana Burn rank 2
		player:LearnSpell(10874) -- Mana Burn rank 3
		player:LearnSpell(10875) -- Mana Burn rank 4
		player:LearnSpell(10876) -- Mana Burn rank 5
		player:LearnSpell(25379) -- Mana Burn rank 6
		player:LearnSpell(25380) -- Mana Burn rank 7
        player:LearnSpell(32375) -- Mass Dispel
        player:LearnSpell(8092) -- Mind Blast [Rank 1]
        player:LearnSpell(8102) -- Mind Blast [Rank 2]
        player:LearnSpell(8103) -- Mind Blast [Rank 3]
        player:LearnSpell(8104) -- Mind Blast [Rank 4]
        player:LearnSpell(8105) -- Mind Blast [Rank 5]
        player:LearnSpell(8106) -- Mind Blast [Rank 6]
        player:LearnSpell(10945) -- Mind Blast [Rank 7]
        player:LearnSpell(10946) -- Mind Blast [Rank 8]
        player:LearnSpell(10947) -- Mind Blast [Rank 9]
        player:LearnSpell(25372) -- Mind Blast [Rank 10]
        player:LearnSpell(25375) -- Mind Blast [Rank 11]
        player:LearnSpell(48126) -- Mind Blast [Rank 12]
        player:LearnSpell(48127) -- Mind Blast [Rank 13]
        player:LearnSpell(605) -- Mind Control rank 1
		player:LearnSpell(10911) -- Mind Control rank 2
		player:LearnSpell(10912) -- Mind Control rank 3
        player:LearnSpell(48045) -- Mind Sear [Rank 1]
        player:LearnSpell(53023) -- Mind Sear [Rank 2]
        player:LearnSpell(453) -- Mind Soothe rank 1
		player:LearnSpell(8192) -- Mind Soothe rank 2
		player:LearnSpell(10953) -- Mind Soothe rank 3
		player:LearnSpell(25596) -- Mind Soothe rank 4
        player:LearnSpell(2096) -- Mind Vision [Rank 1]
        player:LearnSpell(10909) -- Mind Vision [Rank 2]
        player:LearnSpell(1243) -- Power Word: Fortitude [Rank 1]
        player:LearnSpell(1244) -- Power Word: Fortitude [Rank 2]
        player:LearnSpell(1245) -- Power Word: Fortitude [Rank 3]
        player:LearnSpell(2791) -- Power Word: Fortitude [Rank 4]
        player:LearnSpell(10937) -- Power Word: Fortitude [Rank 5]
        player:LearnSpell(10938) -- Power Word: Fortitude [Rank 6]
        player:LearnSpell(25389) -- Power Word: Fortitude [Rank 7]
        player:LearnSpell(48161) -- Power Word: Fortitude [Rank 8]
        player:LearnSpell(17) -- Power Word: Shield [Rank 1]
        player:LearnSpell(592) -- Power Word: Shield [Rank 2]
        player:LearnSpell(600) -- Power Word: Shield [Rank 3]
        player:LearnSpell(3747) -- Power Word: Shield [Rank 4]
        player:LearnSpell(6065) -- Power Word: Shield [Rank 5]
        player:LearnSpell(6066) -- Power Word: Shield [Rank 6]
        player:LearnSpell(10898) -- Power Word: Shield [Rank 7]
        player:LearnSpell(10899) -- Power Word: Shield [Rank 8]
        player:LearnSpell(10900) -- Power Word: Shield [Rank 9]
        player:LearnSpell(10901) -- Power Word: Shield [Rank 10]
        player:LearnSpell(25217) -- Power Word: Shield [Rank 11]
        player:LearnSpell(25218) -- Power Word: Shield [Rank 12]
        player:LearnSpell(48065) -- Power Word: Shield [Rank 13]
        player:LearnSpell(48066) -- Power Word: Shield [Rank 14]
        player:LearnSpell(21562) -- Prayer of Fortitude [Rank 1]
        player:LearnSpell(21564) -- Prayer of Fortitude [Rank 2]
        player:LearnSpell(25392) -- Prayer of Fortitude [Rank 3]
        player:LearnSpell(48162) -- Prayer of Fortitude [Rank 4]
        player:LearnSpell(596) -- Prayer of Healing [Rank 1]
        player:LearnSpell(996) -- Prayer of Healing [Rank 2]
        player:LearnSpell(10960) -- Prayer of Healing [Rank 3]
        player:LearnSpell(10961) -- Prayer of Healing [Rank 4]
        player:LearnSpell(25316) -- Prayer of Healing [Rank 5]
        player:LearnSpell(25308) -- Prayer of Healing [Rank 6]
        player:LearnSpell(48072) -- Prayer of Healing [Rank 7]
        player:LearnSpell(33076) -- Prayer of Mending [Rank 1]
        player:LearnSpell(48112) -- Prayer of Mending [Rank 2]
        player:LearnSpell(48113) -- Prayer of Mending [Rank 3]
        player:LearnSpell(27683) -- Prayer of Shadow Protection [Rank 1]
        player:LearnSpell(39374) -- Prayer of Shadow Protection [Rank 2]
        player:LearnSpell(48170) -- Prayer of Shadow Protection [Rank 3]
        player:LearnSpell(27681) -- Prayer of Spirit [Rank 1]
        player:LearnSpell(32999) -- Prayer of Spirit [Rank 2]
        player:LearnSpell(48074) -- Prayer of Spirit [Rank 3]
        player:LearnSpell(8122) -- Psychic Scream [Rank 1]
        player:LearnSpell(8124) -- Psychic Scream [Rank 2]
        player:LearnSpell(10888) -- Psychic Scream [Rank 3]
        player:LearnSpell(10890) -- Psychic Scream [Rank 4]
        player:LearnSpell(139) -- Renew [Rank 1]
        player:LearnSpell(6074) -- Renew [Rank 2]
        player:LearnSpell(6075) -- Renew [Rank 3]
        player:LearnSpell(6076) -- Renew [Rank 4]
        player:LearnSpell(6077) -- Renew [Rank 5]
        player:LearnSpell(6078) -- Renew [Rank 6]
        player:LearnSpell(10927) -- Renew [Rank 7]
        player:LearnSpell(10928) -- Renew [Rank 8]
        player:LearnSpell(10929) -- Renew [Rank 9]
        player:LearnSpell(25315) -- Renew [Rank 10]
        player:LearnSpell(25221) -- Renew [Rank 11]
        player:LearnSpell(25222) -- Renew [Rank 12]
        player:LearnSpell(48067) -- Renew [Rank 13]
        player:LearnSpell(48068) -- Renew [Rank 14]
        player:LearnSpell(2006) -- Resurrection [Rank 1]
        player:LearnSpell(2010) -- Resurrection [Rank 2]
        player:LearnSpell(10880) -- Resurrection [Rank 3]
        player:LearnSpell(10881) -- Resurrection [Rank 4]
        player:LearnSpell(20770) -- Resurrection [Rank 5]
        player:LearnSpell(25435) -- Resurrection [Rank 6]
        player:LearnSpell(48171) -- Resurrection [Rank 7]
        player:LearnSpell(9484) -- Shackle Undead [Rank 1]
        player:LearnSpell(9485) -- Shackle Undead [Rank 2]
        player:LearnSpell(10955) -- Shackle Undead [Rank 3]
        player:LearnSpell(976) -- Shadow Protection [Rank 1]
        player:LearnSpell(10957) -- Shadow Protection [Rank 2]
        player:LearnSpell(10958) -- Shadow Protection [Rank 3]
        player:LearnSpell(25433) -- Shadow Protection [Rank 4]
        player:LearnSpell(48169) -- Shadow Protection [Rank 5]
        player:LearnSpell(32379) -- Shadow Word: Death [Rank 1]
        player:LearnSpell(32996) -- Shadow Word: Death [Rank 2]
        player:LearnSpell(48157) -- Shadow Word: Death [Rank 3]
        player:LearnSpell(48158) -- Shadow Word: Death [Rank 4]
        player:LearnSpell(589) -- Shadow Word: Pain [Rank 1]
        player:LearnSpell(594) -- Shadow Word: Pain [Rank 2]
        player:LearnSpell(970) -- Shadow Word: Pain [Rank 3]
        player:LearnSpell(992) -- Shadow Word: Pain [Rank 4]
        player:LearnSpell(2767) -- Shadow Word: Pain [Rank 5]
        player:LearnSpell(10892) -- Shadow Word: Pain [Rank 6]
        player:LearnSpell(10893) -- Shadow Word: Pain [Rank 7]
        player:LearnSpell(10894) -- Shadow Word: Pain [Rank 8]
        player:LearnSpell(25367) -- Shadow Word: Pain [Rank 9]
        player:LearnSpell(25368) -- Shadow Word: Pain [Rank 10]
        player:LearnSpell(48124) -- Shadow Word: Pain [Rank 11]
        player:LearnSpell(48125) -- Shadow Word: Pain [Rank 12]
        player:LearnSpell(34433) -- Shadowfiend
        player:LearnSpell(591) -- Smite [Rank 2]
        player:LearnSpell(598) -- Smite [Rank 3]
        player:LearnSpell(984) -- Smite [Rank 4]
        player:LearnSpell(1004) -- Smite [Rank 5]
        player:LearnSpell(6060) -- Smite [Rank 6]
        player:LearnSpell(10933) -- Smite [Rank 7]
        player:LearnSpell(10934) -- Smite [Rank 8]
        player:LearnSpell(25363) -- Smite [Rank 9]
        player:LearnSpell(25364) -- Smite [Rank 10]
        player:LearnSpell(48122) -- Smite [Rank 11]
        player:LearnSpell(48123) -- Smite [Rank 12]
		
local race = player:GetPlayerRace()
if race == 1 then
player:LearnSpell(13908) --Desperate prayer rank 1
player:LearnSpell(19236) --Desperate prayer rank 2
player:LearnSpell(19238) --Desperate prayer rank 3
player:LearnSpell(19240) --Desperate prayer rank 4
player:LearnSpell(19241) --Desperate prayer rank 5
player:LearnSpell(19242) --Desperate prayer rank 6
player:LearnSpell(19243) --Desperate prayer rank 7
player:LearnSpell(25437) --Desperate Prayer rank 8
player:LearnSpell(6347)	-- Feedback rank 1
player:LearnSpell(19271) -- feedback rank 2
player:LearnSpell(19273) -- feedback rank 3
player:LearnSpell(19274) -- feedback rank 4
player:LearnSpell(19275) -- feedback rank 5
player:LearnSpell(25441) -- Feedback rank 6
end

if race == 3 then
player:LearnSpell(13908) --Desperate prayer rank 1
player:LearnSpell(19236) --Desperate prayer rank 2
player:LearnSpell(19238) --Desperate prayer rank 3
player:LearnSpell(19240) --Desperate prayer rank 4
player:LearnSpell(19241) --Desperate prayer rank 5
player:LearnSpell(19242) --Desperate prayer rank 6
player:LearnSpell(19243) --Desperate prayer rank 7
player:LearnSpell(25437) --Desperate Prayer rank 8
player:LearnSpell(44041) --Chastise rank 1
player:LearnSpell(44043) --Chastise rank 2
player:LearnSpell(44044) --Chastise rank 3
player:LearnSpell(44045) --Chastise rank 4
player:LearnSpell(44046) --Chastise rank 5
player:LearnSpell(44047) --Chastise rank 6
end    

if race == 11 then
player:LearnSpell(32548) --Symbol of Hope 						
player:LearnSpell(44041) --Chastise rank 1
player:LearnSpell(44043) --Chastise rank 2
player:LearnSpell(44044) --Chastise rank 3
player:LearnSpell(44045) --Chastise rank 4
player:LearnSpell(44046) --Chastise rank 5
player:LearnSpell(44047) --Chastise rank 6
end

if race == 4 then
player:LearnSpell(2651) -- Elunes grace
player:LearnSpell(10797) -- Starshards rank 1
player:LearnSpell(19296) -- Starshards rank 2
player:LearnSpell(19299) -- Starshards rank 3
player:LearnSpell(19302) -- Starshards rank 4
player:LearnSpell(19303) -- Starshards rank 5
player:LearnSpell(19304) -- Starshards rank 6
player:LearnSpell(19305) -- Starshards rank 7
player:LearnSpell(25446) -- Starshards rank 8
end

if race == 10 then
player:LearnSpell(32676) -- Consume Magic
player:LearnSpell(2652) -- Touch Of Weakness rank 1
player:LearnSpell(19261) -- Touch Of Weakness rank 2
player:LearnSpell(19262) -- Touch Of Weakness rank 3
player:LearnSpell(19264) -- Touch Of Weakness rank 4
player:LearnSpell(19265) -- Touch Of Weakness rank 5
player:LearnSpell(19266) -- Touch Of Weakness rank 6
player:LearnSpell(25461) -- Touch Of Weakness rank 7
end
		
if race == 8 then
player:LearnSpell(18137) --Shadowguard rank 1
player:LearnSpell(19308) --Shadowguard rank 2
player:LearnSpell(19309) --Shadowguard rank 3
player:LearnSpell(19310) --Shadowguard rank 4
player:LearnSpell(19311) --Shadowguard rank 5
player:LearnSpell(19312) --Shadowguard rank 6
player:LearnSpell(25477) --Shadowguard rank 7
player:LearnSpell(9035) -- Hex of Weakness rank 1
player:LearnSpell(19281) -- Hex of Weakness rank 2
player:LearnSpell(19282) -- Hex of Weakness rank 3
player:LearnSpell(19283) -- Hex of Weakness rank 4
player:LearnSpell(19284) -- Hex of Weakness rank 5
player:LearnSpell(19285) -- Hex of Weakness rank 6
player:LearnSpell(25470) -- Hex of Weakness rank 7
end

if race == 5 then
player:LearnSpell(2652) -- Touch Of Weakness rank 1
player:LearnSpell(19261) -- Touch Of Weakness rank 2
player:LearnSpell(19262) -- Touch Of Weakness rank 3
player:LearnSpell(19264) -- Touch Of Weakness rank 4
player:LearnSpell(19265) -- Touch Of Weakness rank 5
player:LearnSpell(19266) -- Touch Of Weakness rank 6
player:LearnSpell(25461) -- Touch Of Weakness rank 7
player:LearnSpell(2944)  -- Devouring Plague [Rank 1]
player:LearnSpell(19276) -- Devouring Plague [Rank 2]
player:LearnSpell(19277) -- Devouring Plague [Rank 3]
player:LearnSpell(19278) -- Devouring Plague [Rank 4]
player:LearnSpell(19279) -- Devouring Plague [Rank 5]
player:LearnSpell(19280) -- Devouring Plague [Rank 6]
player:LearnSpell(25467) -- Devouring Plague [Rank 7]
player:LearnSpell(48299) -- Devouring Plague [Rank 8]
player:LearnSpell(48300) -- Devouring Plague [Rank 9]
end
        player:GossipComplete()
end -- End Priest Spells	
	 if (intid == 105) then
--[Shaman Spells]
		player:AddItem(5175, 1) -- Earth Totem
		player:AddItem(5176, 1) --Fire Totem
		player:AddItem(5177, 1) -- Water Totem
		player:AddItem(5178, 1) -- Air Totem
		player:LearnSpell(8737) -- Mail
        player:LearnSpell(2008) -- Ancestral Spirit [Rank 1]
        player:LearnSpell(20609) -- Ancestral Spirit [Rank 2]
        player:LearnSpell(20610) -- Ancestral Spirit [Rank 3]
        player:LearnSpell(20776) -- Ancestral Spirit [Rank 4]
        player:LearnSpell(20777) -- Ancestral Spirit [Rank 5]
        player:LearnSpell(25590) -- Ancestral Spirit [Rank 6]
        player:LearnSpell(49277) -- Ancestral Spirit [Rank 7]
        player:LearnSpell(556) -- Astral Recall
                local race = player:GetPlayerRace()
                if race == 2 or race == 6 or race == 8 then
                        player:LearnSpell(2825) -- Bloodlust
                elseif race == 11 then
                        player:LearnSpell(32182) -- Heroism
                end
        player:LearnSpell(66843) -- Call of the Ancestors
        player:LearnSpell(66842) -- Call of the Elements
        player:LearnSpell(66844) -- Call of the Spirits
        player:LearnSpell(1064) -- Chain Heal [Rank 1]
        player:LearnSpell(10622) -- Chain Heal [Rank 2]
        player:LearnSpell(10623) -- Chain Heal [Rank 3]
        player:LearnSpell(25422) -- Chain Heal [Rank 4]
        player:LearnSpell(25423) -- Chain Heal [Rank 5]
        player:LearnSpell(55458) -- Chain Heal [Rank 6]
        player:LearnSpell(55459) -- Chain Heal [Rank 7]
        player:LearnSpell(421) -- Chain Lightning [Rank 1]
        player:LearnSpell(930) -- Chain Lightning [Rank 2]
        player:LearnSpell(2860) -- Chain Lightning [Rank 3]
        player:LearnSpell(10605) -- Chain Lightning [Rank 4]
        player:LearnSpell(25439) -- Chain Lightning [Rank 5]
        player:LearnSpell(25442) -- Chain Lightning [Rank 6]
        player:LearnSpell(49270) -- Chain Lightning [Rank 7]
        player:LearnSpell(49271) -- Chain Lightning [Rank 8]
        player:LearnSpell(8170) -- Cleansing Totem
        player:LearnSpell(526) -- Cure Toxins
		player:LearnSpell(2870) -- Cure Disease
        player:LearnSpell(2062) -- Earth Elemental Totem
        player:LearnSpell(8042) -- Earth Shock [Rank 1]
        player:LearnSpell(8044) -- Earth Shock [Rank 2]
        player:LearnSpell(8045) -- Earth Shock [Rank 3]
        player:LearnSpell(8046) -- Earth Shock [Rank 4]
        player:LearnSpell(10412) -- Earth Shock [Rank 5]
        player:LearnSpell(10413) -- Earth Shock [Rank 6]
        player:LearnSpell(10414) -- Earth Shock [Rank 7]
        player:LearnSpell(25454) -- Earth Shock [Rank 8]
        player:LearnSpell(49230) -- Earth Shock [Rank 9]
        player:LearnSpell(49231) -- Earth Shock [Rank 10]
        player:LearnSpell(2484) -- Earthbind Totem
        player:LearnSpell(51730) -- Earthliving Weapon [Rank 1]
        player:LearnSpell(51988) -- Earthliving Weapon [Rank 2]
        player:LearnSpell(51991) -- Earthliving Weapon [Rank 3]
        player:LearnSpell(51992) -- Earthliving Weapon [Rank 4]
        player:LearnSpell(51993) -- Earthliving Weapon [Rank 5]
        player:LearnSpell(51994) -- Earthliving Weapon [Rank 6]
        player:LearnSpell(6196) -- Far Sight
        player:LearnSpell(2894) -- Fire Elemental Totem
        player:LearnSpell(1535) -- Fire Nova Totem [Rank 1]
        player:LearnSpell(8498) -- Fire Nova Totem [Rank 2]
        player:LearnSpell(8499) -- Fire Nova Totem [Rank 3]
        player:LearnSpell(11314) -- Fire Nova Totem [Rank 4]
        player:LearnSpell(11315) -- Fire Nova Totem [Rank 5]
        player:LearnSpell(25546) -- Fire Nova Totem [Rank 6]
        player:LearnSpell(25547) -- Fire Nova Totem [Rank 7]
        player:LearnSpell(61649) -- Fire Nova Totem [Rank 8]
        player:LearnSpell(61657) -- Fire Nova Totem [Rank 9]
        player:LearnSpell(8184) -- Fire Resistance Totem [Rank 1]
        player:LearnSpell(10537) -- Fire Resistance Totem [Rank 2]
        player:LearnSpell(10538) -- Fire Resistance Totem [Rank 3]
        player:LearnSpell(25563) -- Fire Resistance Totem [Rank 4]
        player:LearnSpell(58737) -- Fire Resistance Totem [Rank 5]
        player:LearnSpell(58739) -- Fire Resistance Totem [Rank 6]
        player:LearnSpell(8050) -- Flame Shock [Rank 1]
        player:LearnSpell(8052) -- Flame Shock [Rank 2]
        player:LearnSpell(8053) -- Flame Shock [Rank 3]
        player:LearnSpell(10447) -- Flame Shock [Rank 4]
        player:LearnSpell(10448) -- Flame Shock [Rank 5]
        player:LearnSpell(29228) -- Flame Shock [Rank 6]
        player:LearnSpell(25457) -- Flame Shock [Rank 7]
        player:LearnSpell(49232) -- Flame Shock [Rank 8]
        player:LearnSpell(49233) -- Flame Shock [Rank 9]
        player:LearnSpell(8227) -- Flametongue Totem [Rank 1]
        player:LearnSpell(8249) -- Flametongue Totem [Rank 2]
        player:LearnSpell(10526) -- Flametongue Totem [Rank 3]
        player:LearnSpell(16387) -- Flametongue Totem [Rank 4]
        player:LearnSpell(25557) -- Flametongue Totem [Rank 5]
        player:LearnSpell(58649) -- Flametongue Totem [Rank 6]
        player:LearnSpell(58652) -- Flametongue Totem [Rank 7]
        player:LearnSpell(58656) -- Flametongue Totem [Rank 8]
        player:LearnSpell(8024) -- Flametongue Weapon [Rank 1]
        player:LearnSpell(8027) -- Flametongue Weapon [Rank 2]
        player:LearnSpell(8030) -- Flametongue Weapon [Rank 3]
        player:LearnSpell(16339) -- Flametongue Weapon [Rank 4]
        player:LearnSpell(16341) -- Flametongue Weapon [Rank 5]
        player:LearnSpell(16342) -- Flametongue Weapon [Rank 6]
        player:LearnSpell(25489) -- Flametongue Weapon [Rank 7]
        player:LearnSpell(58785) -- Flametongue Weapon [Rank 8]
        player:LearnSpell(58789) -- Flametongue Weapon [Rank 9]
        player:LearnSpell(58790) -- Flametongue Weapon [Rank 10]
        player:LearnSpell(8181) -- Frost Resistance Totem [Rank 1]
        player:LearnSpell(10478) -- Frost Resistance Totem [Rank 2]
        player:LearnSpell(10479) -- Frost Resistance Totem [Rank 3]
        player:LearnSpell(25560) -- Frost Resistance Totem [Rank 4]
        player:LearnSpell(58741) -- Frost Resistance Totem [Rank 5]
        player:LearnSpell(58745) -- Frost Resistance Totem [Rank 6]
        player:LearnSpell(8056) -- Frost Shock [Rank 1]
        player:LearnSpell(8058) -- Frost Shock [Rank 2]
        player:LearnSpell(10472) -- Frost Shock [Rank 3]
        player:LearnSpell(10473) -- Frost Shock [Rank 4]
        player:LearnSpell(25464) -- Frost Shock [Rank 5]
        player:LearnSpell(49235) -- Frost Shock [Rank 6]
        player:LearnSpell(49236) -- Frost Shock [Rank 7]
        player:LearnSpell(8033) -- Frostbrand Weapon [Rank 1]
        player:LearnSpell(8038) -- Frostbrand Weapon [Rank 2]
        player:LearnSpell(10456) -- Frostbrand Weapon [Rank 3]
        player:LearnSpell(16355) -- Frostbrand Weapon [Rank 4]
        player:LearnSpell(16356) -- Frostbrand Weapon [Rank 5]
        player:LearnSpell(25500) -- Frostbrand Weapon [Rank 6]
        player:LearnSpell(58794) -- Frostbrand Weapon [Rank 7]
        player:LearnSpell(58795) -- Frostbrand Weapon [Rank 8]
        player:LearnSpell(58796) -- Frostbrand Weapon [Rank 9]
        player:LearnSpell(2645) -- Ghost Wolf
		player:LearnSpell(8835) -- Grace of Air totem rank 1
		player:LearnSpell(10627) -- Grace of Air totem rank 2
		player:LearnSpell(25359) -- Grace of Air totem rank 3
        player:LearnSpell(8177) -- Grounding Totem
        player:LearnSpell(5394) -- Healing Stream Totem [Rank 1]
        player:LearnSpell(6375) -- Healing Stream Totem [Rank 2]
        player:LearnSpell(6377) -- Healing Stream Totem [Rank 3]
        player:LearnSpell(10462) -- Healing Stream Totem [Rank 4]
        player:LearnSpell(10463) -- Healing Stream Totem [Rank 5]
        player:LearnSpell(25567) -- Healing Stream Totem [Rank 6]
        player:LearnSpell(58755) -- Healing Stream Totem [Rank 7]
        player:LearnSpell(58756) -- Healing Stream Totem [Rank 8]
        player:LearnSpell(58757) -- Healing Stream Totem [Rank 9]
        player:LearnSpell(332) -- Healing Wave [Rank 2]
        player:LearnSpell(547) -- Healing Wave [Rank 3]
        player:LearnSpell(913) -- Healing Wave [Rank 4]
        player:LearnSpell(939) -- Healing Wave [Rank 5]
        player:LearnSpell(959) -- Healing Wave [Rank 6]
        player:LearnSpell(8005) -- Healing Wave [Rank 7]
        player:LearnSpell(10395) -- Healing Wave [Rank 8]
        player:LearnSpell(10396) -- Healing Wave [Rank 9]
        player:LearnSpell(25357) -- Healing Wave [Rank 10]
        player:LearnSpell(25391) -- Healing Wave [Rank 11]
        player:LearnSpell(25396) -- Healing Wave [Rank 12]
        player:LearnSpell(49272) -- Healing Wave [Rank 13]
        player:LearnSpell(49273) -- Healing Wave [Rank 14]
        player:LearnSpell(51514) -- Hex
        player:LearnSpell(51505) -- Lava Burst [Rank 1]
        player:LearnSpell(60043) -- Lava Burst [Rank 2]
        player:LearnSpell(8004) -- Lesser Healing Wave [Rank 1]
        player:LearnSpell(8008) -- Lesser Healing Wave [Rank 2]
        player:LearnSpell(8010) -- Lesser Healing Wave [Rank 3]
        player:LearnSpell(10466) -- Lesser Healing Wave [Rank 4]
        player:LearnSpell(10467) -- Lesser Healing Wave [Rank 5]
        player:LearnSpell(10468) -- Lesser Healing Wave [Rank 6]
        player:LearnSpell(25420) -- Lesser Healing Wave [Rank 7]
        player:LearnSpell(49275) -- Lesser Healing Wave [Rank 8]
        player:LearnSpell(49276) -- Lesser Healing Wave [Rank 9]
        player:LearnSpell(529) -- Lightning Bolt [Rank 2]
        player:LearnSpell(548) -- Lightning Bolt [Rank 3]
        player:LearnSpell(915) -- Lightning Bolt [Rank 4]
        player:LearnSpell(943) -- Lightning Bolt [Rank 5]
        player:LearnSpell(6041) -- Lightning Bolt [Rank 6]
        player:LearnSpell(10391) -- Lightning Bolt [Rank 7]
        player:LearnSpell(10392) -- Lightning Bolt [Rank 8]
        player:LearnSpell(15207) -- Lightning Bolt [Rank 9]
        player:LearnSpell(15208) -- Lightning Bolt [Rank 10]
        player:LearnSpell(25448) -- Lightning Bolt [Rank 11]
        player:LearnSpell(25449) -- Lightning Bolt [Rank 12]
        player:LearnSpell(49237) -- Lightning Bolt [Rank 13]
        player:LearnSpell(49238) -- Lightning Bolt [Rank 14]
        player:LearnSpell(324) -- Lightning Shield [Rank 1]
        player:LearnSpell(325) -- Lightning Shield [Rank 2]
        player:LearnSpell(905) -- Lightning Shield [Rank 3]
        player:LearnSpell(945) -- Lightning Shield [Rank 4]
        player:LearnSpell(8134) -- Lightning Shield [Rank 5]
        player:LearnSpell(10431) -- Lightning Shield [Rank 6]
        player:LearnSpell(10432) -- Lightning Shield [Rank 7]
        player:LearnSpell(25469) -- Lightning Shield [Rank 8]
        player:LearnSpell(25472) -- Lightning Shield [Rank 9]
        player:LearnSpell(49280) -- Lightning Shield [Rank 10]
        player:LearnSpell(49281) -- Lightning Shield [Rank 11]
        player:LearnSpell(8190) -- Magma Totem [Rank 1]
        player:LearnSpell(10585) -- Magma Totem [Rank 2]
        player:LearnSpell(10586) -- Magma Totem [Rank 3]
        player:LearnSpell(10587) -- Magma Totem [Rank 4]
        player:LearnSpell(25552) -- Magma Totem [Rank 5]
        player:LearnSpell(58731) -- Magma Totem [Rank 6]
        player:LearnSpell(58734) -- Magma Totem [Rank 7]
        player:LearnSpell(5675) -- Mana Spring Totem [Rank 1]
        player:LearnSpell(10495) -- Mana Spring Totem [Rank 2]
        player:LearnSpell(10496) -- Mana Spring Totem [Rank 3]
        player:LearnSpell(10497) -- Mana Spring Totem [Rank 4]
        player:LearnSpell(25570) -- Mana Spring Totem [Rank 5]
        player:LearnSpell(58771) -- Mana Spring Totem [Rank 6]
        player:LearnSpell(58773) -- Mana Spring Totem [Rank 7]
        player:LearnSpell(58774) -- Mana Spring Totem [Rank 8]
        player:LearnSpell(10595) -- Nature Resistance Totem [Rank 1]
        player:LearnSpell(10600) -- Nature Resistance Totem [Rank 2]
        player:LearnSpell(10601) -- Nature Resistance Totem [Rank 3]
        player:LearnSpell(25574) -- Nature Resistance Totem [Rank 4]
        player:LearnSpell(58746) -- Nature Resistance Totem [Rank 5]
        player:LearnSpell(58749) -- Nature Resistance Totem [Rank 6]
        player:LearnSpell(370) -- Purge [Rank 1]
        player:LearnSpell(8012) -- Purge [Rank 2]
		player:LearnSpell(8166) -- Poison Cleansing Totem
        player:LearnSpell(20608) -- Reincarnation
        player:LearnSpell(8017) -- Rockbiter Weapon [Rank 1]
        player:LearnSpell(8018) -- Rockbiter Weapon [Rank 2]
        player:LearnSpell(8019) -- Rockbiter Weapon [Rank 3]
        player:LearnSpell(10399) -- Rockbiter Weapon [Rank 4]
		player:LearnSpell(16314) -- Rockbiter Weapon [Rank 5]
		player:LearnSpell(16315) -- Rockbiter Weapon [Rank 6]
		player:LearnSpell(16316) -- Rockbiter Weapon [Rank 7]
		player:LearnSpell(25479) -- Rockbiter Weapon [Rank 8]
		player:LearnSpell(25485) -- Rockbiter Weapon [Rank 9]
        player:LearnSpell(3599) -- Searing Totem [Rank 1]
        player:LearnSpell(6363) -- Searing Totem [Rank 2]
        player:LearnSpell(6364) -- Searing Totem [Rank 3]
        player:LearnSpell(6365) -- Searing Totem [Rank 4]
        player:LearnSpell(10437) -- Searing Totem [Rank 5]
        player:LearnSpell(10438) -- Searing Totem [Rank 6]
        player:LearnSpell(25533) -- Searing Totem [Rank 7]
        player:LearnSpell(58699) -- Searing Totem [Rank 8]
        player:LearnSpell(58703) -- Searing Totem [Rank 9]
        player:LearnSpell(58704) -- Searing Totem [Rank 10]
        player:LearnSpell(6495) -- Sentry Totem
        player:LearnSpell(5730) -- Stoneclaw Totem [Rank 1]
        player:LearnSpell(6390) -- Stoneclaw Totem [Rank 2]
        player:LearnSpell(6391) -- Stoneclaw Totem [Rank 3]
        player:LearnSpell(6392) -- Stoneclaw Totem [Rank 4]
        player:LearnSpell(10427) -- Stoneclaw Totem [Rank 5]
        player:LearnSpell(10428) -- Stoneclaw Totem [Rank 6]
        player:LearnSpell(25525) -- Stoneclaw Totem [Rank 7]
        player:LearnSpell(58580) -- Stoneclaw Totem [Rank 8]
        player:LearnSpell(58581) -- Stoneclaw Totem [Rank 9]
        player:LearnSpell(58582) -- Stoneclaw Totem [Rank 10]
        player:LearnSpell(8071) -- Stoneskin Totem [Rank 1]
        player:LearnSpell(8154) -- Stoneskin Totem [Rank 2]
        player:LearnSpell(8155) -- Stoneskin Totem [Rank 3]
        player:LearnSpell(10406) -- Stoneskin Totem [Rank 4]
        player:LearnSpell(10407) -- Stoneskin Totem [Rank 5]
        player:LearnSpell(10408) -- Stoneskin Totem [Rank 6]
        player:LearnSpell(25508) -- Stoneskin Totem [Rank 7]
        player:LearnSpell(25509) -- Stoneskin Totem [Rank 8]
        player:LearnSpell(58751) -- Stoneskin Totem [Rank 9]
        player:LearnSpell(58753) -- Stoneskin Totem [Rank 10]
        player:LearnSpell(8075) -- Strength of Earth Totem [Rank 1]
        player:LearnSpell(8160) -- Strength of Earth Totem [Rank 2]
        player:LearnSpell(8161) -- Strength of Earth Totem [Rank 3]
        player:LearnSpell(10442) -- Strength of Earth Totem [Rank 4]
        player:LearnSpell(25361) -- Strength of Earth Totem [Rank 5]
        player:LearnSpell(25528) -- Strength of Earth Totem [Rank 6]
        player:LearnSpell(57622) -- Strength of Earth Totem [Rank 7]
        player:LearnSpell(58643) -- Strength of Earth Totem [Rank 8]
        player:LearnSpell(36936) -- Totemic Recall
        player:LearnSpell(8143) -- Tremor Totem
		player:LearnSpell(25908) -- Tranquill Air Totem
        player:LearnSpell(131) -- Water Breathing
        player:LearnSpell(52127) -- Water Shield [Rank 1]
        player:LearnSpell(52129) -- Water Shield [Rank 2]
        player:LearnSpell(52131) -- Water Shield [Rank 3]
        player:LearnSpell(52134) -- Water Shield [Rank 4]
        player:LearnSpell(52136) -- Water Shield [Rank 5]
        player:LearnSpell(52138) -- Water Shield [Rank 6]
        player:LearnSpell(24398) -- Water Shield [Rank 7]
        player:LearnSpell(33736) -- Water Shield [Rank 8]
        player:LearnSpell(57960) -- Water Shield [Rank 9]
        player:LearnSpell(546) -- Water Walking
        player:LearnSpell(57994) -- Wind Shear
        player:LearnSpell(8512) -- Windfury Totem rank 1
		player:LearnSpell(10613) -- Windfury Totem rank 2
		player:LearnSpell(10614) -- Windfury Totem rank 3
		player:LearnSpell(25585) -- Windfury Totem rank 4
		player:LearnSpell(25587) -- Windfury Totem rank 5
        player:LearnSpell(8232) -- Windfury Weapon [Rank 1]
        player:LearnSpell(8235) -- Windfury Weapon [Rank 2]
        player:LearnSpell(10486) -- Windfury Weapon [Rank 3]
        player:LearnSpell(16362) -- Windfury Weapon [Rank 4]
        player:LearnSpell(25505) -- Windfury Weapon [Rank 5]
        player:LearnSpell(58801) -- Windfury Weapon [Rank 6]
        player:LearnSpell(58803) -- Windfury Weapon [Rank 7]
        player:LearnSpell(58804) -- Windfury Weapon [Rank 8]
		player:LearnSpell(15107) -- Windwall Totem rank 1
		player:LearnSpell(15111) -- Windwall Totem rank 2
		player:LearnSpell(15112) -- Windwall Totem rank 3
		player:LearnSpell(25577) -- Windwall Totem rank 4
		player:LearnSpell(3738) -- Wrath of The air totem
        player:GossipComplete()
end -- End Shaman Spells
	 if (intid == 106) then
--[Mage Spells]
        player:LearnSpell(1008) -- Amplify Magic [Rank 1]
        player:LearnSpell(8455) -- Amplify Magic [Rank 2]
        player:LearnSpell(10169) -- Amplify Magic [Rank 3]
        player:LearnSpell(10170) -- Amplify Magic [Rank 4]
        player:LearnSpell(27130) -- Amplify Magic [Rank 5]
        player:LearnSpell(33946) -- Amplify Magic [Rank 6]
        player:LearnSpell(43017) -- Amplify Magic [Rank 7]
        player:LearnSpell(30451) -- Arcane Blast [Rank 1]
        player:LearnSpell(42894) -- Arcane Blast [Rank 2]
        player:LearnSpell(42896) -- Arcane Blast [Rank 3]
        player:LearnSpell(42897) -- Arcane Blast [Rank 4]
        player:LearnSpell(23028) -- Arcane Brilliance [Rank 1]
        player:LearnSpell(27127) -- Arcane Brilliance [Rank 2]
        player:LearnSpell(43002) -- Arcane Brilliance [Rank 3]
        player:LearnSpell(1449) -- Arcane Explosion [Rank 1]
        player:LearnSpell(8437) -- Arcane Explosion [Rank 2]
        player:LearnSpell(8438) -- Arcane Explosion [Rank 3]
        player:LearnSpell(8439) -- Arcane Explosion [Rank 4]
        player:LearnSpell(10201) -- Arcane Explosion [Rank 5]
        player:LearnSpell(10202) -- Arcane Explosion [Rank 6]
        player:LearnSpell(27080) -- Arcane Explosion [Rank 7]
        player:LearnSpell(27082) -- Arcane Explosion [Rank 8]
        player:LearnSpell(42920) -- Arcane Explosion [Rank 9]
        player:LearnSpell(42921) -- Arcane Explosion [Rank 10]
        player:LearnSpell(1459) -- Arcane Intellect [Rank 1]
        player:LearnSpell(1460) -- Arcane Intellect [Rank 2]
        player:LearnSpell(1461) -- Arcane Intellect [Rank 3]
        player:LearnSpell(10156) -- Arcane Intellect [Rank 4]
        player:LearnSpell(10157) -- Arcane Intellect [Rank 5]
        player:LearnSpell(27126) -- Arcane Intellect [Rank 6]
        player:LearnSpell(42995) -- Arcane Intellect [Rank 7]
        player:LearnSpell(5143) -- Arcane Missles [Rank 1]
        player:LearnSpell(5144) -- Arcane Missles [Rank 2]
        player:LearnSpell(5145) -- Arcane Missles [Rank 3]
        player:LearnSpell(8416) -- Arcane Missles [Rank 4]
        player:LearnSpell(8417) -- Arcane Missles [Rank 5]
        player:LearnSpell(10211) -- Arcane Missles [Rank 6]
        player:LearnSpell(10212) -- Arcane Missles [Rank 7]
        player:LearnSpell(25345) -- Arcane Missles [Rank 8]
        player:LearnSpell(27075) -- Arcane Missles [Rank 9]
        player:LearnSpell(38699) -- Arcane Missles [Rank 10]
        player:LearnSpell(38704) -- Arcane Missles [Rank 11]
        player:LearnSpell(42842) -- Arcane Missles [Rank 12]
        player:LearnSpell(42846) -- Arcane Missles [Rank 13]
        player:LearnSpell(1953) -- Blink
        player:LearnSpell(10) -- Blizzard [Rank 1]
        player:LearnSpell(6141) -- Blizzard [Rank 2]
        player:LearnSpell(8427) -- Blizzard [Rank 3]
        player:LearnSpell(10185) -- Blizzard [Rank 4]
        player:LearnSpell(10186) -- Blizzard [Rank 5]
        player:LearnSpell(10187) -- Blizzard [Rank 6]
        player:LearnSpell(27085) -- Blizzard [Rank 7]
        player:LearnSpell(42939) -- Blizzard [Rank 8]
        player:LearnSpell(42940) -- Blizzard [Rank 9]
        player:LearnSpell(120) -- Cone of Cold [Rank 1]
        player:LearnSpell(8492) -- Cone of Cold [Rank 2]
        player:LearnSpell(10159) -- Cone of Cold [Rank 3]
        player:LearnSpell(10160) -- Cone of Cold [Rank 4]
        player:LearnSpell(10161) -- Cone of Cold [Rank 5]
        player:LearnSpell(27087) -- Cone of Cold [Rank 6]
        player:LearnSpell(42930) -- Cone of Cold [Rank 7]
        player:LearnSpell(42931) -- Cone of Cold [Rank 8]
        player:LearnSpell(587) -- Conjure Food [Rank 1]
        player:LearnSpell(597) -- Conjure Food [Rank 2]
        player:LearnSpell(990) -- Conjure Food [Rank 3]
        player:LearnSpell(6129) -- Conjure Food [Rank 4]
        player:LearnSpell(10144) -- Conjure Food [Rank 5]
        player:LearnSpell(10145) -- Conjure Food [Rank 6]
        player:LearnSpell(28612) -- Conjure Food [Rank 7]
        player:LearnSpell(33717) -- Conjure Food [Rank 8]
        player:LearnSpell(759) -- Conjure Mana Gem [Rank 1]
        player:LearnSpell(3552) -- Conjure Mana Gem [Rank 2]
        player:LearnSpell(10053) -- Conjure Mana Gem [Rank 3]
        player:LearnSpell(10054) -- Conjure Mana Gem [Rank 4]
        player:LearnSpell(27101) -- Conjure Mana Gem [Rank 5]
        player:LearnSpell(42985) -- Conjure Mana Gem [Rank 6]
        player:LearnSpell(42955) -- Conjure Refreshment [Rank 1]
        player:LearnSpell(42956) -- Conjure Refreshment [Rank 2]
        player:LearnSpell(5504) -- Conjure Water [Rank 1]
        player:LearnSpell(5505) -- Conjure Water [Rank 2]
        player:LearnSpell(5506) -- Conjure Water [Rank 3]
        player:LearnSpell(6127) -- Conjure Water [Rank 4]
        player:LearnSpell(10138) -- Conjure Water [Rank 5]
        player:LearnSpell(10139) -- Conjure Water [Rank 6]
        player:LearnSpell(10140) -- Conjure Water [Rank 7]
        player:LearnSpell(37420) -- Conjure Water [Rank 8]
        player:LearnSpell(27090) -- Conjure Water [Rank 9]
        player:LearnSpell(2139) -- Counterspell
        player:LearnSpell(61316) -- Dalaran Brilliance [Rank 3]
        player:LearnSpell(61024) -- Dalaran Intellect [Rank 7]
        player:LearnSpell(604) -- Dampen Magic [Rank 1]
        player:LearnSpell(8450) -- Dampen Magic [Rank 2]
        player:LearnSpell(8451) -- Dampen Magic [Rank 3]
        player:LearnSpell(10173) -- Dampen Magic [Rank 4]
        player:LearnSpell(10174) -- Dampen Magic [Rank 5]
        player:LearnSpell(33944) -- Dampen Magic [Rank 6]
        player:LearnSpell(43015) -- Dampen Magic [Rank 7]
        player:LearnSpell(12051) -- Evocation
        player:LearnSpell(2136) -- Fire Blast [Rank 1]
        player:LearnSpell(2137) -- Fire Blast [Rank 2]
        player:LearnSpell(2138) -- Fire Blast [Rank 3]
        player:LearnSpell(8412) -- Fire Blast [Rank 4]
        player:LearnSpell(8413) -- Fire Blast [Rank 5]
        player:LearnSpell(10197) -- Fire Blast [Rank 6]
        player:LearnSpell(10199) -- Fire Blast [Rank 7]
        player:LearnSpell(27078) -- Fire Blast [Rank 8]
        player:LearnSpell(27079) -- Fire Blast [Rank 9]
        player:LearnSpell(42872) -- Fire Blast [Rank 10]
        player:LearnSpell(42873) -- Fire Blast [Rank 11]
        player:LearnSpell(543) -- Fire Ward [Rank 1]
        player:LearnSpell(8457) -- Fire Ward [Rank 2]
        player:LearnSpell(8458) -- Fire Ward [Rank 3]
        player:LearnSpell(10223) -- Fire Ward [Rank 4]
        player:LearnSpell(10225) -- Fire Ward [Rank 5]
        player:LearnSpell(27128) -- Fire Ward [Rank 6]
        player:LearnSpell(43010) -- Fire Ward [Rank 7]
        player:LearnSpell(143) -- Fireball [Rank 2]
        player:LearnSpell(145) -- Fireball [Rank 3]
        player:LearnSpell(3140) -- Fireball [Rank 4]
        player:LearnSpell(8400) -- Fireball [Rank 5]
        player:LearnSpell(8401) -- Fireball [Rank 6]
        player:LearnSpell(8402) -- Fireball [Rank 7]
        player:LearnSpell(10148) -- Fireball [Rank 8]
        player:LearnSpell(10149) -- Fireball [Rank 9]
        player:LearnSpell(10150) -- Fireball [Rank 10]
        player:LearnSpell(10151) -- Fireball [Rank 11]
        player:LearnSpell(25306) -- Fireball [Rank 12]
        player:LearnSpell(27070) -- Fireball [Rank 13]
        player:LearnSpell(38692) -- Fireball [Rank 14]
        player:LearnSpell(42832) -- Fireball [Rank 15]
        player:LearnSpell(42833) -- Fireball [Rank 16]
        player:LearnSpell(2120) -- Flamestrike [Rank 1]
        player:LearnSpell(2121) -- Flamestrike [Rank 2]
        player:LearnSpell(8422) -- Flamestrike [Rank 3]
        player:LearnSpell(8423) -- Flamestrike [Rank 4]
        player:LearnSpell(10215) -- Flamestrike [Rank 5]
        player:LearnSpell(10216) -- Flamestrike [Rank 6]
        player:LearnSpell(27086) -- Flamestrike [Rank 7]
        player:LearnSpell(42925) -- Flamestrike [Rank 8]
        player:LearnSpell(42926) -- Flamestrike [Rank 9]
        player:LearnSpell(7300) -- Frost Armor [Rank 2]
        player:LearnSpell(7301) -- Frost Armor [Rank 3]
        player:LearnSpell(122) -- Frost Nova [Rank 1]
        player:LearnSpell(865) -- Frost Nova [Rank 2]
        player:LearnSpell(6131) -- Frost Nova [Rank 3]
        player:LearnSpell(10230) -- Frost Nova [Rank 4]
        player:LearnSpell(27088) -- Frost Nova [Rank 5]
        player:LearnSpell(42917) -- Frost Nova [Rank 6]
        player:LearnSpell(6143) -- Frost Ward [Rank 1]
        player:LearnSpell(8461) -- Frost Ward [Rank 2]
        player:LearnSpell(8462) -- Frost Ward [Rank 3]
        player:LearnSpell(10177) -- Frost Ward [Rank 4]
        player:LearnSpell(28609) -- Frost Ward [Rank 5]
        player:LearnSpell(32796) -- Frost Ward [Rank 6]
        player:LearnSpell(43012) -- Frost Ward [Rank 7]
        player:LearnSpell(116) -- Frostbolt [Rank 1]
        player:LearnSpell(205) -- Frostbolt [Rank 2]
        player:LearnSpell(837) -- Frostbolt [Rank 3]
        player:LearnSpell(7322) -- Frostbolt [Rank 4]
        player:LearnSpell(8406) -- Frostbolt [Rank 5]
        player:LearnSpell(8407) -- Frostbolt [Rank 6]
        player:LearnSpell(8408) -- Frostbolt [Rank 7]
        player:LearnSpell(10179) -- Frostbolt [Rank 8]
        player:LearnSpell(10180) -- Frostbolt [Rank 9]
        player:LearnSpell(10181) -- Frostbolt [Rank 10]
        player:LearnSpell(25304) -- Frostbolt [Rank 11]
        player:LearnSpell(27071) -- Frostbolt [Rank 12]
        player:LearnSpell(27072) -- Frostbolt [Rank 13]
        player:LearnSpell(38697) -- Frostbolt [Rank 14]
        player:LearnSpell(42841) -- Frostbolt [Rank 15]
        player:LearnSpell(42842) -- Frostbolt [Rank 16]
        player:LearnSpell(44614) -- Frostfire Bolt [Rank 1]
        player:LearnSpell(47610) -- Frostfire Bolt [Rank 2]
        player:LearnSpell(7302) -- Ice Armor [Rank 1]
        player:LearnSpell(7320) -- Ice Armor [Rank 2]
        player:LearnSpell(10219) -- Ice Armor [Rank 3]
        player:LearnSpell(10220) -- Ice Armor [Rank 4]
        player:LearnSpell(27124) -- Ice Armor [Rank 5]
        player:LearnSpell(43008) -- Ice Armor [Rank 6]
        player:LearnSpell(45438) -- Ice Block
        player:LearnSpell(30455) -- Ice Lance [Rank 1]
        player:LearnSpell(42913) -- Ice Lance [Rank 2]
        player:LearnSpell(42914) -- Ice Lance [Rank 3]
        player:LearnSpell(66) -- Invisibility
        player:LearnSpell(6117) -- Mage Armor [Rank 1]
        player:LearnSpell(22782) -- Mage Armor [Rank 2]
        player:LearnSpell(22783) -- Mage Armor [Rank 3]
        player:LearnSpell(27125) -- Mage Armor [Rank 4]
        player:LearnSpell(43023) -- Mage Armor [Rank 5]
        player:LearnSpell(43024) -- Mage Armor [Rank 6]
        player:LearnSpell(1463) -- Mana Shield [Rank 1]
        player:LearnSpell(8494) -- Mana Shield [Rank 2]
        player:LearnSpell(8495) -- Mana Shield [Rank 3]
        player:LearnSpell(10191) -- Mana Shield [Rank 4]
        player:LearnSpell(10192) -- Mana Shield [Rank 5]
        player:LearnSpell(10193) -- Mana Shield [Rank 6]
        player:LearnSpell(27131) -- Mana Shield [Rank 7]
        player:LearnSpell(43019) -- Mana Shield [Rank 8]
        player:LearnSpell(43020) -- Mana Shield [Rank 9]
        player:LearnSpell(55342) -- Mirror Image
        player:LearnSpell(30482) -- Molten Armor [Rank 1]
        player:LearnSpell(43045) -- Molten Armor [Rank 2]
        player:LearnSpell(43046) -- Molten Armor [Rank 3]
        player:LearnSpell(118) -- Polymorph [Rank 1]
        player:LearnSpell(12824) -- Polymorph [Rank 2]
        player:LearnSpell(12825) -- Polymorph [Rank 3]
        player:LearnSpell(12826) -- Polymorph [Rank 4]
        player:LearnSpell(61305) -- Polymorph: Black Cat
        player:LearnSpell(28272) -- Polymorph: Pig
        player:LearnSpell(61721) -- Polymorph: Rabbit
        player:LearnSpell(61780) -- Polymorph: Turkey
        player:LearnSpell(28271) -- Polymorph: Turtle
        player:LearnSpell(53142) -- Portal: Dalaran
                local race = player:GetPlayerRace()
                if race == 1 or race == 3 or race == 4 or race == 7 or race == 11 then
                        player:LearnSpell(11419) -- Portal: Darnassus
                        player:LearnSpell(32266) -- Portal: Exodar
                        player:LearnSpell(11416) -- Portal: Ironforge
                        player:LearnSpell(33691) -- Portal: Shattrath
                        player:LearnSpell(11059) -- Portal: Stormwind
                        player:LearnSpell(49360) -- Portal: Theramore
                elseif race == 2 or race == 5 or race == 6 or race == 8 or race == 10 then
                        player:LearnSpell(11417) -- Portal: Orgrimmar
                        player:LearnSpell(35717) -- Portal: Shattrath
                        player:LearnSpell(32267) -- Portal: Silvermoon
                        player:LearnSpell(49361) -- Portal: Stonard
                        player:LearnSpell(11420) -- Portal: Thunder Bluff
                        player:LearnSpell(11418) -- Portal: Undercity
                end
        player:LearnSpell(475) -- Remove Curse
        player:LearnSpell(43987) -- Ritual of Refreshment [Rank 1]
        player:LearnSpell(58659) -- Ritual of Refreshment [Rank 2]
        player:LearnSpell(2948) -- Scorch [Rank 1]
        player:LearnSpell(8444) -- Scorch [Rank 2]
        player:LearnSpell(8445) -- Scorch [Rank 3]
        player:LearnSpell(8446) -- Scorch [Rank 4]
        player:LearnSpell(10205) -- Scorch [Rank 5]
        player:LearnSpell(10206) -- Scorch [Rank 6]
        player:LearnSpell(10207) -- Scorch [Rank 7]
        player:LearnSpell(27073) -- Scorch [Rank 8]
        player:LearnSpell(27074) -- Scorch [Rank 9]
        player:LearnSpell(42858) -- Scorch [Rank 10]
        player:LearnSpell(42859) -- Scorch [Rank 11]
        player:LearnSpell(130) -- Slow Fall
        player:LearnSpell(30449) -- Spellsteal
        player:LearnSpell(53140) -- Teleport: Dalaran
                local race = player:GetPlayerRace()
                if race == 1 or race == 3 or race == 4 or race == 7 or race == 11 then
                        player:LearnSpell(3565) -- Teleport: Darnassus
                        player:LearnSpell(32271) -- Teleport: Exodar
                        player:LearnSpell(3562) -- Teleport: Ironforge
                        player:LearnSpell(33690) -- Teleport: Shattrath
                        player:LearnSpell(3561) -- Teleport: Stormwind
                        player:LearnSpell(49359) -- Teleport: Theramore
                elseif race == 2 or race == 5 or race == 6 or race == 8 or race == 10 then
                        player:LearnSpell(3567) -- Teleport: Orgrimmar
                        player:LearnSpell(35715) -- Teleport: Shattrath
                        player:LearnSpell(32272) -- Teleport: Silvermoon
                        player:LearnSpell(49358) -- Teleport: Stonard
                        player:LearnSpell(3566) -- Teleport: Thunder Bluff
                        player:LearnSpell(3563) -- Teleport: Undercity
                end
        player:GossipComplete()
end -- End Mage Spells 
	 if (intid == 107) then
	--[Warlock Spells]--
        player:LearnSpell(6366) -- Create Firestone [Rank 1]
        player:LearnSpell(17951) -- Create Firestone [Rank 2]
        player:LearnSpell(17952) -- Create Firestone [Rank 3]
        player:LearnSpell(17953) -- Create Firestone [Rank 4]
        player:LearnSpell(27250) -- Create Firestone [Rank 5]
        player:LearnSpell(60219) -- Create Firestone [Rank 6]
        player:LearnSpell(60220) -- Create Firestone [Rank 7]
        player:LearnSpell(693) -- Create Soulstone [Rank 1]
        player:LearnSpell(20752) -- Create Soulstone [Rank 2]
        player:LearnSpell(20755) -- Create Soulstone [Rank 3]
        player:LearnSpell(20756) -- Create Soulstone [Rank 4]
        player:LearnSpell(20757) -- Create Soulstone [Rank 5]
        player:LearnSpell(27238) -- Create Soulstone [Rank 6]
        player:LearnSpell(47884) -- Create Soulstone [Rank 7]
        player:LearnSpell(2362) -- Create Spellstone [Rank 1]
        player:LearnSpell(17727) -- Create Spellstone [Rank 2]
        player:LearnSpell(17728) -- Create Spellstone [Rank 3]
        player:LearnSpell(28172) -- Create Spellstone [Rank 4]
        player:LearnSpell(47886) -- Create Spellstone [Rank 5]
        player:LearnSpell(47888) -- Create Spellstone [Rank 6]
        player:LearnSpell(710) -- Banish [Rank 1]
        player:LearnSpell(18647) -- Banish [Rank 2]
        player:LearnSpell(172) -- Corruption [Rank 1]
        player:LearnSpell(6222) -- Corruption [Rank 2]
        player:LearnSpell(6223) -- Corruption [Rank 3]
        player:LearnSpell(7648) -- Corruption [Rank 4]
        player:LearnSpell(11671) -- Corruption [Rank 5]
        player:LearnSpell(11672) -- Corruption [Rank 6]
        player:LearnSpell(25311) -- Corruption [Rank 7]
        player:LearnSpell(27216) -- Corruption [Rank 8]
        player:LearnSpell(47812) -- Corruption [Rank 9]
        player:LearnSpell(47813) -- Corruption [Rank 10]
        player:LearnSpell(6201) -- Create Healthstone [Rank 1]
        player:LearnSpell(6202) -- Create Healthstone [Rank 2]
        player:LearnSpell(5699) -- Create Healthstone [Rank 3]
        player:LearnSpell(11729) -- Create Healthstone [Rank 4]
        player:LearnSpell(11730) -- Create Healthstone [Rank 5]
        player:LearnSpell(27230) -- Create Healthstone [Rank 6]
        player:LearnSpell(47871) -- Create Healthstone [Rank 7]
        player:LearnSpell(47878) -- Create Healthstone [Rank 8]
        player:LearnSpell(980) -- Curse of Agony [Rank 1]
        player:LearnSpell(1014) -- Curse of Agony [Rank 2]
        player:LearnSpell(6217) -- Curse of Agony [Rank 3]
        player:LearnSpell(11711) -- Curse of Agony [Rank 4]
        player:LearnSpell(11712) -- Curse of Agony [Rank 5]
        player:LearnSpell(11713) -- Curse of Agony [Rank 6]
        player:LearnSpell(27218) -- Curse of Agony [Rank 7]
        player:LearnSpell(47863) -- Curse of Agony [Rank 8]
        player:LearnSpell(47864) -- Curse of Agony [Rank 9]
        player:LearnSpell(603) -- Curse of Doom [Rank 1]
        player:LearnSpell(30910) -- Curse of Doom [Rank 2]
        player:LearnSpell(47867) -- Curse of Doom [Rank 3]
        player:LearnSpell(1714) -- Curse of Tongues [Rank 1]
        player:LearnSpell(11719) -- Curse of Tongues [Rank 2]
        player:LearnSpell(702) -- Curse of Weakness [Rank 1]
        player:LearnSpell(1108) -- Curse of Weakness [Rank 2]
        player:LearnSpell(6205) -- Curse of Weakness [Rank 3]
        player:LearnSpell(7646) -- Curse of Weakness [Rank 4]
        player:LearnSpell(11707) -- Curse of Weakness [Rank 5]
        player:LearnSpell(11708) -- Curse of Weakness [Rank 6]
        player:LearnSpell(27224) -- Curse of Weakness [Rank 7]
        player:LearnSpell(30909) -- Curse of Weakness [Rank 8]
        player:LearnSpell(50511) -- Curse of Weakness [Rank 9]
        player:LearnSpell(1490) -- Curse of the Elements [Rank 1]
        player:LearnSpell(11721) -- Curse of the Elements [Rank 2]
        player:LearnSpell(11722) -- Curse of the Elements [Rank 3]
        player:LearnSpell(27228) -- Curse of the Elements [Rank 4]
        player:LearnSpell(47865) -- Curse of the Elements [Rank 5]
		player:LearnSpell(704) -- Curse of Recklessness rank 1
		player:LearnSpell(7658) -- Curse of Recklessness rank 2
		player:LearnSpell(7659) -- Curse of Recklessness rank 3
		player:LearnSpell(11717) -- Curse of Recklessness rank 4
		player:LearnSpell(27226) -- Curse of Recklessness rank 5
        player:LearnSpell(6789) -- Death Coil [Rank 1]
        player:LearnSpell(17925) -- Death Coil [Rank 2]
        player:LearnSpell(17926) -- Death Coil [Rank 3]
        player:LearnSpell(27223) -- Death Coil [Rank 4]
        player:LearnSpell(47859) -- Death Coil [Rank 5]
        player:LearnSpell(47860) -- Death Coil [Rank 6]
        player:LearnSpell(706) -- Demon Armor [Rank 1]
        player:LearnSpell(1086) -- Demon Armor [Rank 2]
        player:LearnSpell(11733) -- Demon Armor [Rank 3]
        player:LearnSpell(11734) -- Demon Armor [Rank 4]
        player:LearnSpell(11735) -- Demon Armor [Rank 5]
        player:LearnSpell(27260) -- Demon Armor [Rank 6]
        player:LearnSpell(47793) -- Demon Armor [Rank 7]
        player:LearnSpell(47889) -- Demon Armor [Rank 8]
        player:LearnSpell(687) -- Demon Skin [Rank 1]
        player:LearnSpell(696) -- Demon Skin [Rank 2]
        player:LearnSpell(48018) -- Demonic Circle: Summon
        player:LearnSpell(48020) -- Demonic Circle: Teleport
        player:LearnSpell(132) -- Detect Invisibility
        player:LearnSpell(689) -- Drain Life [Rank 1]
        player:LearnSpell(699) -- Drain Life [Rank 2]
        player:LearnSpell(709) -- Drain Life [Rank 3]
        player:LearnSpell(7651) -- Drain Life [Rank 4]
        player:LearnSpell(11699) -- Drain Life [Rank 5]
        player:LearnSpell(11700) -- Drain Life [Rank 6]
        player:LearnSpell(27219) -- Drain Life [Rank 7]
        player:LearnSpell(27220) -- Drain Life [Rank 8]
        player:LearnSpell(47857) -- Drain Life [Rank 9]
        player:LearnSpell(5138) -- Drain Mana
		player:LearnSpell(6226) -- Drain Mana rank 2
		player:LearnSpell(11703) -- Drain Mana rank 3
		player:LearnSpell(11704) -- Drain Mana rank 4
		player:LearnSpell(27221) -- Drain Mana rank 5
		player:LearnSpell(30908) -- Drain Mana rank 6
        player:LearnSpell(1120) -- Drain Soul [Rank 1]
        player:LearnSpell(8288) -- Drain Soul [Rank 2]
        player:LearnSpell(8289) -- Drain Soul [Rank 3]
        player:LearnSpell(11675) -- Drain Soul [Rank 4]
        player:LearnSpell(27217) -- Drain Soul [Rank 5]
        player:LearnSpell(47855) -- Drain Soul [Rank 6]
        player:LearnSpell(23161) -- Dreadsteed
        player:LearnSpell(1098) -- Enslave Demon [Rank 1]
        player:LearnSpell(11725) -- Enslave Demon [Rank 2]
        player:LearnSpell(11726) -- Enslave Demon [Rank 3]
        player:LearnSpell(61191) -- Enslave Demon [Rank 4]
        player:LearnSpell(126) -- Eye of Kilrogg
        player:LearnSpell(5782) -- Fear [Rank 1]
        player:LearnSpell(6213) -- Fear [Rank 2]
        player:LearnSpell(6215) -- Fear [Rank 3]
        player:LearnSpell(28176) -- Fel Armor [Rank 1]
        player:LearnSpell(28189) -- Fel Armor [Rank 2]
        player:LearnSpell(47892) -- Fel Armor [Rank 3]
        player:LearnSpell(47893) -- Fel Armor [Rank 4]
        player:LearnSpell(5784) -- Felsteed
        player:LearnSpell(755) -- Health Funnel [Rank 1]
        player:LearnSpell(3698) -- Health Funnel [Rank 2]
        player:LearnSpell(3699) -- Health Funnel [Rank 3]
        player:LearnSpell(3700) -- Health Funnel [Rank 4]
        player:LearnSpell(11693) -- Health Funnel [Rank 5]
        player:LearnSpell(11694) -- Health Funnel [Rank 6]
        player:LearnSpell(11695) -- Health Funnel [Rank 7]
        player:LearnSpell(27259) -- Health Funnel [Rank 8]
        player:LearnSpell(47856) -- Health Funnel [Rank 9]
        player:LearnSpell(1949) -- Hellfire [Rank 1]
        player:LearnSpell(11683) -- Hellfire [Rank 2]
        player:LearnSpell(11684) -- Hellfire [Rank 3]
        player:LearnSpell(27213) -- Hellfire [Rank 4]
        player:LearnSpell(47823) -- Hellfire [Rank 5]
        player:LearnSpell(5484) -- Howl of Terror [Rank 1]
        player:LearnSpell(17928) -- Howl of Terror [Rank 2]
        player:LearnSpell(348) -- Immolate [Rank 1]
        player:LearnSpell(707) -- Immolate [Rank 2]
        player:LearnSpell(1094) -- Immolate [Rank 3]
        player:LearnSpell(2941) -- Immolate [Rank 4]
        player:LearnSpell(11665) -- Immolate [Rank 5]
        player:LearnSpell(11667) -- Immolate [Rank 6]
        player:LearnSpell(11668) -- Immolate [Rank 7]
        player:LearnSpell(25309) -- Immolate [Rank 8]
        player:LearnSpell(27215) -- Immolate [Rank 9]
        player:LearnSpell(47810) -- Immolate [Rank 10]
        player:LearnSpell(47811) -- Immolate [Rank 11]
        player:LearnSpell(29722) -- Incinerate [Rank 1]
        player:LearnSpell(32231) -- Incinerate [Rank 2]
        player:LearnSpell(47837) -- Incinerate [Rank 3]
        player:LearnSpell(47838) -- Incinerate [Rank 4]
        player:LearnSpell(1454) -- Life Tap [Rank 1]
        player:LearnSpell(1455) -- Life Tap [Rank 2]
        player:LearnSpell(1456) -- Life Tap [Rank 3]
        player:LearnSpell(11687) -- Life Tap [Rank 4]
        player:LearnSpell(11688) -- Life Tap [Rank 5]
        player:LearnSpell(11689) -- Life Tap [Rank 6]
        player:LearnSpell(27222) -- Life Tap [Rank 7]
        player:LearnSpell(57946) -- Life Tap [Rank 8]
        player:LearnSpell(5740) -- Rain of Fire [Rank 1]
        player:LearnSpell(6219) -- Rain of Fire [Rank 2]
        player:LearnSpell(11677) -- Rain of Fire [Rank 3]
        player:LearnSpell(11678) -- Rain of Fire [Rank 4]
        player:LearnSpell(27212) -- Rain of Fire [Rank 5]
        player:LearnSpell(47819) -- Rain of Fire [Rank 6]
        player:LearnSpell(47820) -- Rain of Fire [Rank 7]
        player:LearnSpell(18540) -- Ritual of Doom
        player:LearnSpell(29893) -- Ritual of Souls [Rank 1]
        player:LearnSpell(58887) -- Ritual of Souls [Rank 2]
        player:LearnSpell(698) -- Ritual of Summoning
        player:LearnSpell(5676) -- Searing Pain [Rank 1]
        player:LearnSpell(17919) -- Searing Pain [Rank 2]
        player:LearnSpell(17920) -- Searing Pain [Rank 3]
        player:LearnSpell(17921) -- Searing Pain [Rank 4]
        player:LearnSpell(17922) -- Searing Pain [Rank 5]
        player:LearnSpell(17923) -- Searing Pain [Rank 6]
        player:LearnSpell(27210) -- Searing Pain [Rank 7]
        player:LearnSpell(30459) -- Searing Pain [Rank 8]
        player:LearnSpell(47814) -- Searing Pain [Rank 9]
        player:LearnSpell(47815) -- Searing Pain [Rank 10]
        player:LearnSpell(27243) -- Seed of Corruption [Rank 1]
        player:LearnSpell(47835) -- Seed of Corruption [Rank 2]
        player:LearnSpell(47836) -- Seed of Corruption [Rank 3]
        player:LearnSpell(5500) -- Sense Demons
        player:LearnSpell(695) -- Shadow Bolt [Rank 2]
        player:LearnSpell(705) -- Shadow Bolt [Rank 3]
        player:LearnSpell(1088) -- Shadow Bolt [Rank 4]
        player:LearnSpell(1106) -- Shadow Bolt [Rank 5]
        player:LearnSpell(7641) -- Shadow Bolt [Rank 6]
        player:LearnSpell(11659) -- Shadow Bolt [Rank 7]
        player:LearnSpell(11660) -- Shadow Bolt [Rank 8]
        player:LearnSpell(11661) -- Shadow Bolt [Rank 9]
        player:LearnSpell(25307) -- Shadow Bolt [Rank 10]
        player:LearnSpell(27209) -- Shadow Bolt [Rank 11]
        player:LearnSpell(47808) -- Shadow Bolt [Rank 12]
        player:LearnSpell(47809) -- Shadow Bolt [Rank 13]
        player:LearnSpell(6229) -- Shadow Ward [Rank 1]
        player:LearnSpell(11739) -- Shadow Ward [Rank 2]
        player:LearnSpell(11740) -- Shadow Ward [Rank 3]
        player:LearnSpell(28610) -- Shadow Ward [Rank 4]
        player:LearnSpell(47890) -- Shadow Ward [Rank 5]
        player:LearnSpell(47891) -- Shadow Ward [Rank 6]
        player:LearnSpell(47897) -- Shadowflame [Rank 1]
        player:LearnSpell(61290) -- Shadowflame [Rank 2]
        player:LearnSpell(6353) -- Soul Fire [Rank 1]
        player:LearnSpell(17924) -- Soul Fire [Rank 2]
        player:LearnSpell(27211) -- Soul Fire [Rank 3]
        player:LearnSpell(30545) -- Soul Fire [Rank 4]
        player:LearnSpell(47824) -- Soul Fire [Rank 5]
        player:LearnSpell(47825) -- Soul Fire [Rank 6]
        player:LearnSpell(29858) -- Soulshatter
        player:LearnSpell(691) -- Summon Felhunter
        player:LearnSpell(688) -- Summon Imp
        player:LearnSpell(712) -- Summon Succubus
        player:LearnSpell(697) -- Summon Voidwalker
        player:LearnSpell(5697) -- Unending Breath
        player:GossipComplete()
end -- End Warlock Spells	
	if (intid == 108) then
--[Druid Spells]--
-- Excluded Bear Form since Dire Bear Form replaces it --
        player:LearnSpell(2893) -- Abolish Poison
        player:LearnSpell(1066) -- Aquatic Form
        player:LearnSpell(22812) -- Barkskin
        player:LearnSpell(5211) -- Bash [Rank 1]
        player:LearnSpell(6798) -- Bash [Rank 2]
        player:LearnSpell(8983) -- Bash [Rank 3]
        player:LearnSpell(768) -- Cat Form
        player:LearnSpell(5209) -- Challenging Roar
        player:LearnSpell(1082) -- Claw [Rank 1]
        player:LearnSpell(3029) -- Claw [Rank 2]
        player:LearnSpell(5201) -- Claw [Rank 3]
        player:LearnSpell(9849) -- Claw [Rank 4]
        player:LearnSpell(9850) -- Claw [Rank 5]
        player:LearnSpell(27000) -- Claw [Rank 6]
        player:LearnSpell(48569) -- Claw [Rank 7]
        player:LearnSpell(48570) -- Claw [Rank 8]
        player:LearnSpell(8998) -- Cower [Rank 1]
        player:LearnSpell(9000) -- Cower [Rank 2]
        player:LearnSpell(9892) -- Cower [Rank 3]
        player:LearnSpell(31709) -- Cower [Rank 4]
        player:LearnSpell(27004) -- Cower [Rank 5]
        player:LearnSpell(48575) -- Cower [Rank 6]
        player:LearnSpell(8946) -- Cure Poison
        player:LearnSpell(33786) -- Cyclone
        player:LearnSpell(1850) -- Dash [Rank 1]
        player:LearnSpell(9821) -- Dash [Rank 2]
        player:LearnSpell(33357) -- Dash [Rank 3]
        player:LearnSpell(99) -- Demoralizing Roar [Rank 1]
        player:LearnSpell(1735) -- Demoralizing Roar [Rank 2]
        player:LearnSpell(9490) -- Demoralizing Roar [Rank 3]
        player:LearnSpell(9747) -- Demoralizing Roar [Rank 4]
        player:LearnSpell(9898) -- Demoralizing Roar [Rank 5]
        player:LearnSpell(26998) -- Demoralizing Roar [Rank 6]
        player:LearnSpell(48559) -- Demoralizing Roar [Rank 7]
        player:LearnSpell(48560) -- Demoralizing Roar [Rank 8]
        player:LearnSpell(9634) -- Dire Bear Form
        player:LearnSpell(5229) -- Enrage
        player:LearnSpell(339) -- Entangling Roots [Rank 1]
        player:LearnSpell(1062) -- Entangling Roots [Rank 2]
        player:LearnSpell(5195) -- Entangling Roots [Rank 3]
        player:LearnSpell(5196) -- Entangling Roots [Rank 4]
        player:LearnSpell(9852) -- Entangling Roots [Rank 5]
        player:LearnSpell(9853) -- Entangling Roots [Rank 6]
        player:LearnSpell(26989) -- Entangling Roots [Rank 7]
        player:LearnSpell(53308) -- Entangling Roots [Rank 8]
        player:LearnSpell(770) -- Faerie Fire
        player:LearnSpell(20719) -- Feline Grace 
        player:LearnSpell(16979) -- Feral Charge - Bear
        player:LearnSpell(49376) -- Feral Charge - Cat 
        player:LearnSpell(22568) -- Ferocious Bite [Rank 1]
        player:LearnSpell(22827) -- Ferocious Bite [Rank 2]
        player:LearnSpell(22828) -- Ferocious Bite [Rank 3]
        player:LearnSpell(22829) -- Ferocious Bite [Rank 4]
        player:LearnSpell(31018) -- Ferocious Bite [Rank 5]
        player:LearnSpell(24248) -- Ferocious Bite [Rank 6]
        player:LearnSpell(48576) -- Ferocious Bite [Rank 7]
        player:LearnSpell(48577) -- Ferocious Bite [Rank 8]
        player:LearnSpell(33943) -- Flight Form
        player:LearnSpell(22842) -- Frenzied Regeneration [Rank 1]
        player:LearnSpell(21849) -- Gift of the Wild [Rank 1]
        player:LearnSpell(21850) -- Gift of the Wild [Rank 2]
        player:LearnSpell(26991) -- Gift of the Wild [Rank 3]
        player:LearnSpell(48470) -- Gift of the Wild [Rank 4]
        player:LearnSpell(6795) -- Growl 
        player:LearnSpell(5186) -- Healing Touch [Rank 2]
        player:LearnSpell(5187) -- Healing Touch [Rank 3]
        player:LearnSpell(5188) -- Healing Touch [Rank 4]
        player:LearnSpell(5189) -- Healing Touch [Rank 5]
        player:LearnSpell(6778) -- Healing Touch [Rank 6]
        player:LearnSpell(8903) -- Healing Touch [Rank 7]
        player:LearnSpell(9758) -- Healing Touch [Rank 8]
        player:LearnSpell(9888) -- Healing Touch [Rank 9]
        player:LearnSpell(9889) -- Healing Touch [Rank 10]
        player:LearnSpell(25297) -- Healing Touch [Rank 11]
        player:LearnSpell(26978) -- Healing Touch [Rank 12]
        player:LearnSpell(26979) -- Healing Touch [Rank 13]
        player:LearnSpell(48377) -- Healing Touch [Rank 14]
        player:LearnSpell(48378) -- Healing Touch [Rank 15]
        player:LearnSpell(2637) -- Hibernate [Rank 1]
        player:LearnSpell(18657) -- Hibernate [Rank 2]
        player:LearnSpell(18658) -- Hibernate [Rank 3]
        player:LearnSpell(16914) -- Hurricane [Rank 1]
        player:LearnSpell(17401) -- Hurricane [Rank 2]
        player:LearnSpell(17402) -- Hurricane [Rank 3]
        player:LearnSpell(27012) -- Hurricane [Rank 4]
        player:LearnSpell(48467) -- Hurricane [Rank 5]
        player:LearnSpell(29166) -- Innervate
        player:LearnSpell(33745) -- Lacerate [Rank 1]
        player:LearnSpell(48567) -- Lacerate [Rank 2]
        player:LearnSpell(48568) -- Lacerate [Rank 3]
        player:LearnSpell(33763) -- Lifebloom [Rank 1]
        player:LearnSpell(48450) -- Lifebloom [Rank 2]
        player:LearnSpell(48451) -- Lifebloom [Rank 3]
        player:LearnSpell(22570) -- Maim [Rank 1]
        player:LearnSpell(49802) -- Maim [Rank 2]
       -- player:LearnSpell(33878) -- Mangle (Bear) [Rank 1]
       -- player:LearnSpell(33986) -- Mangle (Bear) [Rank 2]
       -- player:LearnSpell(33987) -- Mangle (Bear) [Rank 3]
       -- player:LearnSpell(48563) -- Mangle (Bear) [Rank 4]
       -- player:LearnSpell(48564) -- Mangle (Bear) [Rank 5]
       -- player:LearnSpell(33876) -- Mangle (Cat) [Rank 1]
       -- player:LearnSpell(33982) -- Mangle (Cat) [Rank 2]
       -- player:LearnSpell(33983) -- Mangle (Cat) [Rank 3]
       -- player:LearnSpell(48565) -- Mangle (Cat) [Rank 4]
       -- player:LearnSpell(48566) -- Mangle (Cat) [Rank 5]
        player:LearnSpell(1126) -- Mark of the Wild [Rank 1]
        player:LearnSpell(5232) -- Mark of the Wild [Rank 2]
        player:LearnSpell(6756) -- Mark of the Wild [Rank 3]
        player:LearnSpell(5234) -- Mark of the Wild [Rank 4]
        player:LearnSpell(8907) -- Mark of the Wild [Rank 5]
        player:LearnSpell(9884) -- Mark of the Wild [Rank 6]
        player:LearnSpell(9885) -- Mark of the Wild [Rank 7]
        player:LearnSpell(26990) -- Mark of the Wild [Rank 8]
        player:LearnSpell(48469) -- Mark of the Wild [Rank 9]
        player:LearnSpell(6807) -- Maul [Rank 1]
        player:LearnSpell(6808) -- Maul [Rank 2]
        player:LearnSpell(6809) -- Maul [Rank 3]
        player:LearnSpell(8972) -- Maul [Rank 4]
        player:LearnSpell(9745) -- Maul [Rank 5]
        player:LearnSpell(9880) -- Maul [Rank 6]
        player:LearnSpell(9881) -- Maul [Rank 7]
        player:LearnSpell(26996) -- Maul [Rank 8]
        player:LearnSpell(48479) -- Maul [Rank 9]
        player:LearnSpell(48480) -- Maul [Rank 10]
        player:LearnSpell(8921) -- Moonfire [Rank 1]
        player:LearnSpell(8924) -- Moonfire [Rank 2]
        player:LearnSpell(8925) -- Moonfire [Rank 3]
        player:LearnSpell(8926) -- Moonfire [Rank 4]
        player:LearnSpell(8927) -- Moonfire [Rank 5]
        player:LearnSpell(8928) -- Moonfire [Rank 6]
        player:LearnSpell(8929) -- Moonfire [Rank 7]
        player:LearnSpell(9833) -- Moonfire [Rank 8]
        player:LearnSpell(9834) -- Moonfire [Rank 9]
        player:LearnSpell(9835) -- Moonfire [Rank 10]
        player:LearnSpell(26987) -- Moonfire [Rank 11]
        player:LearnSpell(26988) -- Moonfire [Rank 12]
        player:LearnSpell(48462) -- Moonfire [Rank 13]
        player:LearnSpell(48463) -- Moonfire [Rank 14]
        player:LearnSpell(50464) -- Nourish [Rank 1]
        player:LearnSpell(9005) -- Pounce [Rank 1]
        player:LearnSpell(9823) -- Pounce [Rank 2]
        player:LearnSpell(9827) -- Pounce [Rank 3]
        player:LearnSpell(27006) -- Pounce [Rank 4]
        player:LearnSpell(49803) -- Pounce [Rank 5]
        player:LearnSpell(5215) -- Prowl [Rank 1]
        player:LearnSpell(6783) -- Prowl [Rank 2]
        player:LearnSpell(9913) -- Prowl [Rank 3]
        player:LearnSpell(1822) -- Rake [Rank 1]
        player:LearnSpell(1823) -- Rake [Rank 2]
        player:LearnSpell(1824) -- Rake [Rank 3]
        player:LearnSpell(9904) -- Rake [Rank 4]
        player:LearnSpell(27003) -- Rake [Rank 5]
        player:LearnSpell(48573) -- Rake [Rank 6]
        player:LearnSpell(48574) -- Rake [Rank 7]
        player:LearnSpell(6785) -- Ravage [Rank 1]
        player:LearnSpell(6787) -- Ravage [Rank 2]
        player:LearnSpell(9866) -- Ravage [Rank 3]
        player:LearnSpell(9867) -- Ravage [Rank 4]
        player:LearnSpell(27005) -- Ravage [Rank 5]
        player:LearnSpell(48578) -- Ravage [Rank 6]
        player:LearnSpell(48579) -- Ravage [Rank 7]
        player:LearnSpell(20484) -- Rebirth [Rank 1]
        player:LearnSpell(20739) -- Rebirth [Rank 2]
        player:LearnSpell(20742) -- Rebirth [Rank 3]
        player:LearnSpell(20747) -- Rebirth [Rank 4]
        player:LearnSpell(20748) -- Rebirth [Rank 5]
        player:LearnSpell(26994) -- Rebirth [Rank 6]
        player:LearnSpell(48477) -- Rebirth [Rank 7]
        player:LearnSpell(8936) -- Regrowth [Rank 1]
        player:LearnSpell(8938) -- Regrowth [Rank 2]
        player:LearnSpell(8939) -- Regrowth [Rank 3]
        player:LearnSpell(8940) -- Regrowth [Rank 4]
        player:LearnSpell(8941) -- Regrowth [Rank 5]
        player:LearnSpell(9750) -- Regrowth [Rank 6]
        player:LearnSpell(9856) -- Regrowth [Rank 7]
        player:LearnSpell(9857) -- Regrowth [Rank 8]
        player:LearnSpell(9858) -- Regrowth [Rank 9]
        player:LearnSpell(26980) -- Regrowth [Rank 10]
        player:LearnSpell(48442) -- Regrowth [Rank 11]
        player:LearnSpell(48443) -- Regrowth [Rank 12]
        player:LearnSpell(774) -- Rejuvenation [Rank 1]
        player:LearnSpell(1058) -- Rejuvenation [Rank 2]
        player:LearnSpell(1430) -- Rejuvenation [Rank 3]
        player:LearnSpell(2090) -- Rejuvenation [Rank 4]
        player:LearnSpell(2091) -- Rejuvenation [Rank 5]
        player:LearnSpell(3627) -- Rejuvenation [Rank 6]
        player:LearnSpell(8910) -- Rejuvenation [Rank 7]
        player:LearnSpell(9839) -- Rejuvenation [Rank 8]
        player:LearnSpell(9840) -- Rejuvenation [Rank 9]
        player:LearnSpell(9841) -- Rejuvenation [Rank 10]
        player:LearnSpell(25299) -- Rejuvenation [Rank 11]
        player:LearnSpell(26981) -- Rejuvenation [Rank 12]
        player:LearnSpell(26982) -- Rejuvenation [Rank 13]
        player:LearnSpell(48440) -- Rejuvenation [Rank 14]
        player:LearnSpell(48441) -- Rejuvenation [Rank 15]
        player:LearnSpell(2782) -- Remove Curse
        player:LearnSpell(50769) -- Revive [Rank 1]
        player:LearnSpell(50768) -- Revive [Rank 2]
        player:LearnSpell(50767) -- Revive [Rank 3]
        player:LearnSpell(50766) -- Revive [Rank 4]
        player:LearnSpell(50765) -- Revive [Rank 5]
        player:LearnSpell(50764) -- Revive [Rank 6]
        player:LearnSpell(50763) -- Revive [Rank 7]
        player:LearnSpell(1079) -- Rip [Rank 1]
        player:LearnSpell(9492) -- Rip [Rank 2]
        player:LearnSpell(9493) -- Rip [Rank 3]
        player:LearnSpell(9752) -- Rip [Rank 4]
        player:LearnSpell(9894) -- Rip [Rank 5]
        player:LearnSpell(9896) -- Rip [Rank 6]
        player:LearnSpell(27008) -- Rip [Rank 7]
        player:LearnSpell(49799) -- Rip [Rank 8]
        player:LearnSpell(49800) -- Rip [Rank 9]
        player:LearnSpell(62600) -- Savage Defense
        player:LearnSpell(52610) -- Savage Roar [Rank 1]
        player:LearnSpell(5221) -- Shred [Rank 1]
        player:LearnSpell(6800) -- Shred [Rank 2]
        player:LearnSpell(8992) -- Shred [Rank 3]
        player:LearnSpell(9829) -- Shred [Rank 4]
        player:LearnSpell(9830) -- Shred [Rank 5]
        player:LearnSpell(27001) -- Shred [Rank 6]
        player:LearnSpell(27002) -- Shred [Rank 7]
        player:LearnSpell(48571) -- Shred [Rank 8]
        player:LearnSpell(48572) -- Shred [Rank 9]
        player:LearnSpell(2908) -- Soothe Animal [Rank 1]
        player:LearnSpell(8955) -- Soothe Animal [Rank 2]
        player:LearnSpell(9901) -- Soothe Animal [Rank 3]
        player:LearnSpell(26995) -- Soothe Animal [Rank 4]
        player:LearnSpell(2912) -- Starfire [Rank 1]
        player:LearnSpell(8949) -- Starfire [Rank 2]
        player:LearnSpell(8950) -- Starfire [Rank 3]
        player:LearnSpell(8951) -- Starfire [Rank 4]
        player:LearnSpell(9875) -- Starfire [Rank 5]
        player:LearnSpell(9876) -- Starfire [Rank 6]
        player:LearnSpell(25298) -- Starfire [Rank 7]
        player:LearnSpell(26986) -- Starfire [Rank 8]
        player:LearnSpell(48464) -- Starfire [Rank 9]
        player:LearnSpell(48465) -- Starfire [Rank 10]
        player:LearnSpell(40120) -- Swift Flight Form
        player:LearnSpell(779) -- Swipe (Bear) [Rank 1]
        player:LearnSpell(780) -- Swipe (Bear) [Rank 2]
        player:LearnSpell(769) -- Swipe (Bear) [Rank 3]
        player:LearnSpell(9754) -- Swipe (Bear) [Rank 4]
        player:LearnSpell(9908) -- Swipe (Bear) [Rank 5]
        player:LearnSpell(26997) -- Swipe (Bear) [Rank 6]
        player:LearnSpell(48561) -- Swipe (Bear) [Rank 7]
        player:LearnSpell(48562) -- Swipe (Bear) [Rank 8]
        player:LearnSpell(62078) -- Swipe (Cat) [Rank 1]
        player:LearnSpell(18960) -- Teleport: Moonglade
        player:LearnSpell(467) -- Thorns [Rank 1]
        player:LearnSpell(782) -- Thorns [Rank 2]
        player:LearnSpell(1075) -- Thorns [Rank 3]
        player:LearnSpell(8914) -- Thorns [Rank 4]
        player:LearnSpell(9756) -- Thorns [Rank 5]
        player:LearnSpell(9910) -- Thorns [Rank 6]
        player:LearnSpell(26992) -- Thorns [Rank 7]
        player:LearnSpell(53307) -- Thorns [Rank 8]
        player:LearnSpell(5217) -- Tiger's Fury [Rank 1]
        player:LearnSpell(6793) -- Tiger's Fury [Rank 2]
        player:LearnSpell(9845) -- Tiger's Fury [Rank 3]
        player:LearnSpell(9846) -- Tiger's Fury [Rank 4]
        player:LearnSpell(50212) -- Tiger's Fury [Rank 5]
        player:LearnSpell(50213) -- Tiger's Fury [Rank 6]
        player:LearnSpell(5225) -- Track Humanoids
        player:LearnSpell(740) -- Tranquility [Rank 1]
        player:LearnSpell(8918) -- Tranquility [Rank 2]
        player:LearnSpell(9862) -- Tranquility [Rank 3]
        player:LearnSpell(9863) -- Tranquility [Rank 4]
        player:LearnSpell(26983) -- Tranquility [Rank 5]
        player:LearnSpell(48446) -- Tranquility [Rank 6]
        player:LearnSpell(48447) -- Tranquility [Rank 7]
        player:LearnSpell(783) -- Travel Form
        player:LearnSpell(5177) -- Wrath [Rank 2]
        player:LearnSpell(5178) -- Wrath [Rank 3]
        player:LearnSpell(5179) -- Wrath [Rank 4]
        player:LearnSpell(5180) -- Wrath [Rank 5]
        player:LearnSpell(6780) -- Wrath [Rank 6]
        player:LearnSpell(8905) -- Wrath [Rank 7]
        player:LearnSpell(9912) -- Wrath [Rank 8]
        player:LearnSpell(26984) -- Wrath [Rank 9]
        player:LearnSpell(26985) -- Wrath [Rank 10]
        player:LearnSpell(48459) -- Wrath [Rank 11]
        player:LearnSpell(48461) -- Wrath [Rank 12]
        player:GossipComplete()
end

		   
end


RegisterItemGossipEvent(50011, 1, "PerkTest_OnGossipTalk")
RegisterItemGossipEvent(50011, 2, "PerkTest_OnGossipSelect")
