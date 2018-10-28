					-- Check if SenseUI was loaded.
					if SenseUI == nil then
						RunScript( "senseui.lua" );
					end
					local show_group = true;
					local this_sizeable = false;
					local window_moveable = true;
					local show_gradient = true;
					local button_toggler = false;
					local ui_rate = 10;
					local slider_showpm = false;
					local funny_sliders = 0;
					local draw_texture = false;
					local bind_button = SenseUI.Keys.home;
					local bind_active = false;
					local bind_detect = SenseUI.KeyDetection.on_hotkey;

					local window_bkey = SenseUI.Keys.delete;
					local window_bact = false;
					local window_bdet = SenseUI.KeyDetection.on_hotkey;
					local legit_bot_enabled = gui.GetValue("lbot_enable");
					local ex_combo = 1;
					local ex_mcombo = {};
					local ex_2combo = 1;
					local list = 1;
					local listScroll = 0;
					local listSearch = "";
					 local label
					local textboxTest = "";
					local textboxTest2 = "";

					SenseUI.EnableLogs = true;
					local AimbotMaster = false
					local AntiSpread = false;
					local AntiRecoil = false;
							local MasterSwitch = false

				
					function convert_bool(bool)
					if bool == true then return 1 elseif bool == false then return 0 end		
					end
					function meme(a)
					if a == false then
					
					end
					end
					function draw_callback()
						if SenseUI.BeginWindow( "wnd1", 50, 50, 565, 400) then
							SenseUI.DrawTabBar();
							if SenseUI.BeginTab("rage_tab", SenseUI.Icons.rage) then
								if SenseUI.BeginGroup( "Aimbot_Group", "Aimbot", 25, 25, 204, 337 ) then
				MasterSwitch = SenseUI.Checkbox( "Master Switch" , MasterSwitch)
								if (MasterSwitch) then gui.SetValue("rbot_active", "1") gui.SetValue("rbot_enable", "1") else  gui.SetValue("rbot_active", "0") gui.SetValue("rbot_enable", "0") end 
								AimbotMaster = SenseUI.Checkbox( "Silent Aim" , AimbotMaster)
								if (AimbotMaster) then gui.SetValue("rbot_silentaim", "1") else gui.SetValue("rbot_silentaim", "0") end 
								
				local FOV = gui.GetValue("rbot_fov"); -- lets default to our user's fov that he has selected :)
				
				local XposantiStanding = gui.GetValue("rbot_antiaim_stand_pitch_custom"); -- lets default to our user's fov that he has selected :)

			-- ...

			FOV = SenseUI.Slider( "Override FOV", 0, 180, "°", "0°", "180°", false, FOV );
			gui.SetValue("rbot_fov", FOV)
			XposantiStanding = SenseUI.Slider( "Standing Pitch Custom", -180, 180, "°", "-180°", "180°", false, XposantiStanding );
			function checkforerrors(i)
			if i == 10 then print("saved 10 to 9") return 9
			  elseif  i == 1 then print"saved 1 to 0 " return 0 else return i -1 end
			end
			
			function fixedfunction(i)
			if i == 9 then return 10 elseif i == 0 then return 1 else return i end
			end

			for i = 0,10 do 
			checkforerrors(i)
			end


			gui.SetValue("rbot_antiaim_stand_pitch_custom", XposantiStanding)



			-- ...
	SenseUI.Label( "Anti Aim" );

			ex_combo  = SenseUI.Combo( "Standing Pitch Preset", {"Off", "Emotion", "Down", "Fake Down", "Up" , "Fake Up", "Zero", "Fake Zero", "Mixed", "Custom" }, ex_combo );
				gui.SetValue("rbot_antiaim_stand_pitch_real", checkforerrors(ex_combo))
		local realyawadd = gui.GetValue("rbot_antiaim_stand_real_add");
		SenseUI.Label( "Real Yaw" );

				realyawadd = SenseUI.Slider( "Real Yaw Add", -180, 180, "°", "-180°	", "180°", false, realyawadd );
	gui.SetValue("rbot_antiaim_stand_real_add", realyawadd)
		SenseUI.Label( "Real Yaw Add" );

		ex_2combo  = SenseUI.Combo( "Real Yaw AntiAim", {"Off", "Static", "Spinbot", "Jitter", "Zero" , "Switch"}, ex_2combo );
					gui.SetValue("rbot_antiaim_stand_real_add", checkforerrors(ex_2combo))


			

								SenseUI.EndGroup();
								end
								
							end
	SenseUI.EndTab();
	if SenseUI.BeginTab("legit_bot", SenseUI.Icons.legit then
	if SenseUI.BeginGroup("Aim_boot", "Aimbot", 25,25,204, 280) then
	legit_bot_enabled = SenseUI.Checkbox( "Enabled", legit_bot_enabled );
	if (legit_bot_enabled) then gui.SetValue("lbot_enable", "1") else gui.SetValue("lbot_enable", "0") end
	SenseUI.EndGroup();
	end
	end
		SenseUI.EndTab();

							end
							if show_gradient then
								SenseUI.AddGradient();
							end

							SenseUI.SetWindowDrawTexture( draw_texture ); -- Makes huge fps drop. Not recommended to use yet
							SenseUI.SetWindowMoveable( window_moveable );
							SenseUI.SetWindowOpenKey( window_bkey );
					 
							
							SenseUI.EndWindow();
					end

					callbacks.Register( "Draw", "suitest", draw_callback );
