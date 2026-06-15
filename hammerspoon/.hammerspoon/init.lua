-- Escape 키를 누르면 입력 소스를 영어(ABC)로 전환
-- 전역 변수로 두어 eventtap이 GC되지 않도록 함
escapeTap = hs.eventtap.new({ hs.eventtap.event.types.keyDown }, function(event)
	if event:getKeyCode() == hs.keycodes.map["escape"] then
		hs.keycodes.currentSourceID("com.apple.keylayout.ABC")
	end
	return false
end)

escapeTap:start()
