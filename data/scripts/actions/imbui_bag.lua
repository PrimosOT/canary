local imbuement = Action()

function imbuement.onUse(player, item, fromPosition, target, toPosition, isHotkey)
player:openImbuementWindow(target)
return true
end

imbuement:id(49299)
imbuement:register()
