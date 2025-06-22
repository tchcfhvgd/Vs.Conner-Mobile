function onCreate()
	addCharacterToList('connertps-alt','boyfriend')
	makeLuaSprite('bg','hub',-600, -200)
	addLuaSprite('bg', false);
end

function onBeatHit()
	if mustHitSection then
		
		triggerEvent('Camera Follow Pos','323.644','539.589')

	else
		triggerEvent('Camera Follow Pos','360.644','539.589')

	end
end

function onStepHit() 
	if curStep == 1279 then
		cameraFlash('hud','FFFFFF',1)
		triggerEvent('Change Character', 'bf', 'connertps-alt')
		--setPropertyFromGroup('bfgroup','x',150);
	end
end
