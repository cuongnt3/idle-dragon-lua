--- @class DG_Tweening_Tween
DG_Tweening_Tween = Class(DG_Tweening_Tween)

--- @return void
function DG_Tweening_Tween:Ctor()
	--- @type System_Boolean
	self.isRelative = nil
	--- @type System_Boolean
	self.active = nil
	--- @type System_Single
	self.fullPosition = nil
	--- @type System_Boolean
	self.playedOnce = nil
	--- @type System_Single
	self.position = nil
	--- @type System_Single
	self.timeScale = nil
	--- @type System_Boolean
	self.isBackwards = nil
	--- @type System_Object
	self.id = nil
	--- @type System_String
	self.stringId = nil
	--- @type System_Int32
	self.intId = nil
	--- @type System_Object
	self.target = nil
	--- @type DG_Tweening_TweenCallback
	self.onPlay = nil
	--- @type DG_Tweening_TweenCallback
	self.onPause = nil
	--- @type DG_Tweening_TweenCallback
	self.onRewind = nil
	--- @type DG_Tweening_TweenCallback
	self.onUpdate = nil
	--- @type DG_Tweening_TweenCallback
	self.onStepComplete = nil
	--- @type DG_Tweening_TweenCallback
	self.onComplete = nil
	--- @type DG_Tweening_TweenCallback
	self.onKill = nil
	--- @type DG_Tweening_TweenCallback`1[System_Int32]
	self.onWaypointChange = nil
	--- @type System_Single
	self.easeOvershootOrAmplitude = nil
	--- @type System_Single
	self.easePeriod = nil
end

--- @return System_Boolean
--- @param obj System_Object
function DG_Tweening_Tween:Equals(obj)
end

--- @return System_Int32
function DG_Tweening_Tween:GetHashCode()
end

--- @return System_Type
function DG_Tweening_Tween:GetType()
end

--- @return System_String
function DG_Tweening_Tween:ToString()
end
