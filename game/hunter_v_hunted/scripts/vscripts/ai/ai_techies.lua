--------------------------------------------------------------------------------------------------------
-- Techies AI
--------------------------------------------------------------------------------------------------------
function Spawn( entityKeyValues )
	thisEntity:SetContextThink("Think", Think, 1.0)
	thisEntity.behaviorSystem = AICore:CreateBehaviorSystem({
		BehaviorRetreat(thisEntity, DESIRE_MAX),
		BehaviorPlaceMine(thisEntity, DESIRE_HIGH),
		BehaviorTravel(thisEntity, DESIRE_MEDIUM),
		BehaviorChooseNextDestination(thisEntity, DESIRE_LOW+1),
		--BehaviorAddNewDestination(thisEntity, DESIRE_LOW, RANGE_TECHIES_MIN, RANGE_TECHIES_MAX),
		BehaviorWait(thisEntity, DESIRE_NONE+1)
	})
end

function Think()
	if thisEntity:IsNull() or not thisEntity:IsAlive() then
		return nil -- deactivate this think function
	end
	return thisEntity.behaviorSystem:Think()
end