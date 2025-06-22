local spotlightdo = false
function onUpdate()
	if mustHitSection and spotlightdo then
		setProperty('spot2.visible',true);
		setProperty('spot1.visible',false);
	--	doTweenColor('b2', 'boyfriend','FFFFFF',0.1, 'quartIn')
	else
		setProperty('spot1.visible',true);
		setProperty('spot2.visible',false);
		--doTweenColor('b1', 'boyfriend','000000',0.1, 'quartIn')
	end
end

function onStepHit()
	if curStep == 384 then --896
		cameraFlash('hud','000000',1)
		spotlightdo = true
		addLuaSprite('spot1', true)
		addLuaSprite('spot2', true)
		setProperty('bgdark.visible',true);
		setProperty('blackbg.visible',true);
		setProperty('bg.visible',true);
	end
	if curStep == 640 then --896
		cameraFlash('hud','000000',1)
		spotlightdo = false
		removeLuaSprite('spot1', false)
		removeLuaSprite('spot2', false)
		setProperty('bgdark.visible',false);
		setProperty('bg.visible',true);
		setProperty('blackbg.visible',false);
	end
	if curStep == 896 then --896
		cameraFlash('hud','000000',1)
		spotlightdo = true
		addLuaSprite('spot1', true)
		addLuaSprite('spot2', true)
		setProperty('blackbg.visible',true);
		setProperty('bgdark.visible',true);
		setProperty('bg.visible',false);
	end
	if curStep == 1152 then --896
		cameraFlash('hud','000000',1)
		spotlightdo = false
		removeLuaSprite('spot1', true)
		removeLuaSprite('spot2', true)
		setProperty('bgdark.visible',false);
		setProperty('bg.visible',true);
		setProperty('blackbg.visible',false);
	end
end