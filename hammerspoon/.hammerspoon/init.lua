escapeTap = hs.eventtap.new({ hs.eventtap.event.types.keyDown }, function(event)
	if event:getKeyCode() == hs.keycodes.map["escape"] then
		hs.keycodes.currentSourceID("com.apple.keylayout.ABC")
	end
	return false
end)

escapeTap:start()
