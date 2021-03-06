--------------------------------------------------------------------------------------------------------
-- Phoenix Sun Ray Move
--------------------------------------------------------------------------------------------------------
if BehaviorSunRayMove == nil then
	BehaviorSunRayMove = DeclareClass(Behavior, function(self, entity, desire)
		self.unit = entity
		self.desire = desire or DESIRE_MAX
		Behavior.init(self)
	end)
end

function BehaviorSunRayMove:Setup()
	self.moveAbility = self.unit:FindAbilityByName("phoenix_sun_ray_toggle_move")
	self.order.AbilityIndex  = self.moveAbility:entindex()
	self.order.OrderType = DOTA_UNIT_ORDER_CAST_NO_TARGET
end

function BehaviorSunRayMove:Evaluate()
	local desire = DESIRE_NONE

	if self.moveAbility:IsFullyCastable() and not self.moveAbility:IsHidden() then
		desire = self.desire --DESIRE_MAX
	end

	--print(desire .. ": sunray move")
	return desire
end

function BehaviorSunRayMove:Begin()
	self.endTime = GameRules:GetGameTime() + 0.1
end

function BehaviorSunRayMove:Continue()
end

function BehaviorSunRayMove:End()
end

function BehaviorSunRayMove:Think(dt)
end