function onCreate()
	makeLuaSprite('bg','bg1',-600, -200)
	makeLuaSprite('bgdark','bg2',-600, -200)
	makeLuaSprite('spot1','spotlight',-30, -400)
	makeLuaSprite('spot2','spotlight',650, -400)
	makeLuaSprite('blackbg', 'black', -600,-200)
	addLuaSprite('bg', false);
	addLuaSprite('bgdark', false)
	setProperty('blackbg.visible',false);
	setProperty("blackbg.scale.y", 12);
	setProperty("blackbg.scale.x", 12);
	
	setProperty('spot2.visible',false);
	setProperty('spot1.visible',false);
	setProperty('bgdark.visible',false);
	addLuaSprite('blackbg', true);
	setProperty("blackbg.alpha", 0.5)
end
