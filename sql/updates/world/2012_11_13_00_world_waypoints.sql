-- Pathing for Ol' Sooty Entry: 1225
SET @NPC := 8877;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawntimesecs`=1200 `spawndist`=0,`MovementType`=2,`position_x`=-5716.181152,`position_y`=-3110.810791,`position_z`=316.686523 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-5716.181152,-3110.810791,316.686523,0,0,0,100,0), 
(@PATH,2,-5716.187012,-3093.080078,325.600677,0,0,0,100,0), 
(@PATH,3,-5712.214355,-3090.297607,327.738647,0,0,0,100,0), 
(@PATH,4,-5705.484375,-3092.523438,329.362366,0,0,0,100,0), 
(@PATH,5,-5681.826660,-3110.568848,338.121887,0,0,0,100,0), 
(@PATH,6,-5659.498535,-3122.215576,344.336151,0,0,0,100,0), 
(@PATH,7,-5639.585938,-3124.536133,348.404938,0,0,0,100,0), 
(@PATH,8,-5618.112793,-3110.905762,360.618225,0,0,0,100,0), 
(@PATH,9,-5621.486816,-3096.315918,368.247772,0,0,0,100,0), 
(@PATH,10,-5632.212891,-3078.608398,374.990936,0,0,0,100,0), 
(@PATH,11,-5629.793457,-3056.124023,384.465576,0,0,0,100,0), 
(@PATH,12,-5642.278809,-3036.872314,385.471649,0,0,0,100,0), 
(@PATH,13,-5609.369141,-3006.883301,386.288177,0,0,0,100,0), 
(@PATH,14,-5643.634277,-3036.388672,385.531891,0,0,0,100,0), 
(@PATH,15,-5630.174805,-3057.015869,384.385712,0,0,0,100,0), 
(@PATH,16,-5629.840332,-3065.496338,381.129578,0,0,0,100,0), 
(@PATH,17,-5634.866211,-3078.448975,374.489044,0,0,0,100,0), 
(@PATH,18,-5620.416504,-3101.081543,364.819855,0,0,0,100,0), 
(@PATH,19,-5624.629395,-3117.040527,354.493805,0,0,0,100,0), 
(@PATH,20,-5644.949707,-3125.081787,347.271362,0,0,0,100,0), 
(@PATH,21,-5660.741699,-3121.580566,343.975922,0,0,0,100,0), 
(@PATH,22,-5676.210938,-3111.586914,340.021484,0,0,0,100,0), 
(@PATH,23,-5691.895508,-3102.994385,333.646698,0,0,0,100,0), 
(@PATH,24,-5711.662109,-3088.433594,328.761566,0,0,0,100,0), 
(@PATH,25,-5717.663574,-3099.033691,321.686920,0,0,0,100,0), 
(@PATH,26,-5705.214844,-3132.324219,315.837585,0,0,0,100,0), 
(@PATH,27,-5679.014160,-3185.046875,319.508057,0,0,0,100,0);
