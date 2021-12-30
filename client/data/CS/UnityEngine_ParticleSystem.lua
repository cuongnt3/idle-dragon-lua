--- @class UnityEngine_ParticleSystem
UnityEngine_ParticleSystem = Class(UnityEngine_ParticleSystem)

--- @return void
function UnityEngine_ParticleSystem:Ctor()
	--- @type System_Int32
	self.safeCollisionEventSize = nil
	--- @type System_Single
	self.startDelay = nil
	--- @type System_Boolean
	self.loop = nil
	--- @type System_Boolean
	self.playOnAwake = nil
	--- @type System_Single
	self.duration = nil
	--- @type System_Single
	self.playbackSpeed = nil
	--- @type System_Boolean
	self.enableEmission = nil
	--- @type System_Single
	self.emissionRate = nil
	--- @type System_Single
	self.startSpeed = nil
	--- @type System_Single
	self.startSize = nil
	--- @type UnityEngine_Color
	self.startColor = nil
	--- @type System_Single
	self.startRotation = nil
	--- @type UnityEngine_Vector3
	self.startRotation3D = nil
	--- @type System_Single
	self.startLifetime = nil
	--- @type System_Single
	self.gravityModifier = nil
	--- @type System_Int32
	self.maxParticles = nil
	--- @type UnityEngine_ParticleSystemSimulationSpace
	self.simulationSpace = nil
	--- @type UnityEngine_ParticleSystemScalingMode
	self.scalingMode = nil
	--- @type System_Boolean
	self.automaticCullingEnabled = nil
	--- @type System_Boolean
	self.isPlaying = nil
	--- @type System_Boolean
	self.isEmitting = nil
	--- @type System_Boolean
	self.isStopped = nil
	--- @type System_Boolean
	self.isPaused = nil
	--- @type System_Int32
	self.particleCount = nil
	--- @type System_Single
	self.time = nil
	--- @type System_UInt32
	self.randomSeed = nil
	--- @type System_Boolean
	self.useAutoRandomSeed = nil
	--- @type System_Boolean
	self.proceduralSimulationSupported = nil
	--- @type UnityEngine_ParticleSystem_MainModule
	self.main = nil
	--- @type UnityEngine_ParticleSystem_EmissionModule
	self.emission = nil
	--- @type UnityEngine_ParticleSystem_ShapeModule
	self.shape = nil
	--- @type UnityEngine_ParticleSystem_VelocityOverLifetimeModule
	self.velocityOverLifetime = nil
	--- @type UnityEngine_ParticleSystem_LimitVelocityOverLifetimeModule
	self.limitVelocityOverLifetime = nil
	--- @type UnityEngine_ParticleSystem_InheritVelocityModule
	self.inheritVelocity = nil
	--- @type UnityEngine_ParticleSystem_ForceOverLifetimeModule
	self.forceOverLifetime = nil
	--- @type UnityEngine_ParticleSystem_ColorOverLifetimeModule
	self.colorOverLifetime = nil
	--- @type UnityEngine_ParticleSystem_ColorBySpeedModule
	self.colorBySpeed = nil
	--- @type UnityEngine_ParticleSystem_SizeOverLifetimeModule
	self.sizeOverLifetime = nil
	--- @type UnityEngine_ParticleSystem_SizeBySpeedModule
	self.sizeBySpeed = nil
	--- @type UnityEngine_ParticleSystem_RotationOverLifetimeModule
	self.rotationOverLifetime = nil
	--- @type UnityEngine_ParticleSystem_RotationBySpeedModule
	self.rotationBySpeed = nil
	--- @type UnityEngine_ParticleSystem_ExternalForcesModule
	self.externalForces = nil
	--- @type UnityEngine_ParticleSystem_NoiseModule
	self.noise = nil
	--- @type UnityEngine_ParticleSystem_CollisionModule
	self.collision = nil
	--- @type UnityEngine_ParticleSystem_TriggerModule
	self.trigger = nil
	--- @type UnityEngine_ParticleSystem_SubEmittersModule
	self.subEmitters = nil
	--- @type UnityEngine_ParticleSystem_TextureSheetAnimationModule
	self.textureSheetAnimation = nil
	--- @type UnityEngine_ParticleSystem_LightsModule
	self.lights = nil
	--- @type UnityEngine_ParticleSystem_TrailModule
	self.trails = nil
	--- @type UnityEngine_ParticleSystem_CustomDataModule
	self.customData = nil
	--- @type UnityEngine_Transform
	self.transform = nil
	--- @type UnityEngine_GameObject
	self.gameObject = nil
	--- @type System_String
	self.tag = nil
	--- @type UnityEngine_Component
	self.rigidbody = nil
	--- @type UnityEngine_Component
	self.rigidbody2D = nil
	--- @type UnityEngine_Component
	self.camera = nil
	--- @type UnityEngine_Component
	self.light = nil
	--- @type UnityEngine_Component
	self.animation = nil
	--- @type UnityEngine_Component
	self.constantForce = nil
	--- @type UnityEngine_Component
	self.renderer = nil
	--- @type UnityEngine_Component
	self.audio = nil
	--- @type UnityEngine_Component
	self.guiText = nil
	--- @type UnityEngine_Component
	self.networkView = nil
	--- @type UnityEngine_Component
	self.guiElement = nil
	--- @type UnityEngine_Component
	self.guiTexture = nil
	--- @type UnityEngine_Component
	self.collider = nil
	--- @type UnityEngine_Component
	self.collider2D = nil
	--- @type UnityEngine_Component
	self.hingeJoint = nil
	--- @type UnityEngine_Component
	self.particleSystem = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Void
--- @param customData System_Collections_Generic_List`1[UnityEngine_Vector4]
--- @param streamIndex UnityEngine_ParticleSystemCustomData
function UnityEngine_ParticleSystem:SetCustomParticleData(customData, streamIndex)
end

--- @return System_Int32
--- @param customData System_Collections_Generic_List`1[UnityEngine_Vector4]
--- @param streamIndex UnityEngine_ParticleSystemCustomData
function UnityEngine_ParticleSystem:GetCustomParticleData(customData, streamIndex)
end

--- @return System_Void
--- @param subEmitterIndex System_Int32
function UnityEngine_ParticleSystem:TriggerSubEmitter(subEmitterIndex)
end

--- @return System_Void
--- @param subEmitterIndex System_Int32
--- @param particle UnityEngine_ParticleSystem_Particle&
function UnityEngine_ParticleSystem:TriggerSubEmitter(subEmitterIndex, particle)
end

--- @return System_Void
--- @param subEmitterIndex System_Int32
--- @param particles System_Collections_Generic_List`1[UnityEngine_ParticleSystem_Particle]
function UnityEngine_ParticleSystem:TriggerSubEmitter(subEmitterIndex, particles)
end

--- @return System_Void
--- @param position UnityEngine_Vector3
--- @param velocity UnityEngine_Vector3
--- @param size System_Single
--- @param lifetime System_Single
--- @param color UnityEngine_Color32
function UnityEngine_ParticleSystem:Emit(position, velocity, size, lifetime, color)
end

--- @return System_Void
--- @param particle UnityEngine_ParticleSystem_Particle
function UnityEngine_ParticleSystem:Emit(particle)
end

--- @return System_Void
--- @param particles UnityEngine_ParticleSystem_Particle[]
--- @param size System_Int32
--- @param offset System_Int32
function UnityEngine_ParticleSystem:SetParticles(particles, size, offset)
end

--- @return System_Void
--- @param particles UnityEngine_ParticleSystem_Particle[]
--- @param size System_Int32
function UnityEngine_ParticleSystem:SetParticles(particles, size)
end

--- @return System_Void
--- @param particles UnityEngine_ParticleSystem_Particle[]
function UnityEngine_ParticleSystem:SetParticles(particles)
end

--- @return System_Int32
--- @param particles UnityEngine_ParticleSystem_Particle[]
--- @param size System_Int32
--- @param offset System_Int32
function UnityEngine_ParticleSystem:GetParticles(particles, size, offset)
end

--- @return System_Int32
--- @param particles UnityEngine_ParticleSystem_Particle[]
--- @param size System_Int32
function UnityEngine_ParticleSystem:GetParticles(particles, size)
end

--- @return System_Int32
--- @param particles UnityEngine_ParticleSystem_Particle[]
function UnityEngine_ParticleSystem:GetParticles(particles)
end

--- @return System_Void
--- @param t System_Single
--- @param withChildren System_Boolean
--- @param restart System_Boolean
--- @param fixedTimeStep System_Boolean
function UnityEngine_ParticleSystem:Simulate(t, withChildren, restart, fixedTimeStep)
end

--- @return System_Void
--- @param t System_Single
--- @param withChildren System_Boolean
--- @param restart System_Boolean
function UnityEngine_ParticleSystem:Simulate(t, withChildren, restart)
end

--- @return System_Void
--- @param t System_Single
--- @param withChildren System_Boolean
function UnityEngine_ParticleSystem:Simulate(t, withChildren)
end

--- @return System_Void
--- @param t System_Single
function UnityEngine_ParticleSystem:Simulate(t)
end

--- @return System_Void
--- @param withChildren System_Boolean
function UnityEngine_ParticleSystem:Play(withChildren)
end

--- @return System_Void
function UnityEngine_ParticleSystem:Play()
end

--- @return System_Void
--- @param withChildren System_Boolean
function UnityEngine_ParticleSystem:Pause(withChildren)
end

--- @return System_Void
function UnityEngine_ParticleSystem:Pause()
end

--- @return System_Void
--- @param withChildren System_Boolean
--- @param stopBehavior UnityEngine_ParticleSystemStopBehavior
function UnityEngine_ParticleSystem:Stop(withChildren, stopBehavior)
end

--- @return System_Void
--- @param withChildren System_Boolean
function UnityEngine_ParticleSystem:Stop(withChildren)
end

--- @return System_Void
function UnityEngine_ParticleSystem:Stop()
end

--- @return System_Void
--- @param withChildren System_Boolean
function UnityEngine_ParticleSystem:Clear(withChildren)
end

--- @return System_Void
function UnityEngine_ParticleSystem:Clear()
end

--- @return System_Boolean
--- @param withChildren System_Boolean
function UnityEngine_ParticleSystem:IsAlive(withChildren)
end

--- @return System_Boolean
function UnityEngine_ParticleSystem:IsAlive()
end

--- @return System_Void
--- @param count System_Int32
function UnityEngine_ParticleSystem:Emit(count)
end

--- @return System_Void
--- @param emitParams UnityEngine_ParticleSystem_EmitParams
--- @param count System_Int32
function UnityEngine_ParticleSystem:Emit(emitParams, count)
end

--- @return System_Void
function UnityEngine_ParticleSystem:ResetPreMappedBufferMemory()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_ParticleSystem:GetComponent(type)
end

--- @return CS_T
function UnityEngine_ParticleSystem:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_ParticleSystem:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_ParticleSystem:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_ParticleSystem:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_ParticleSystem:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_ParticleSystem:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_ParticleSystem:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_ParticleSystem:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_ParticleSystem:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_ParticleSystem:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_ParticleSystem:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_ParticleSystem:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_ParticleSystem:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_ParticleSystem:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_ParticleSystem:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_ParticleSystem:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_ParticleSystem:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_ParticleSystem:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_ParticleSystem:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_ParticleSystem:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_ParticleSystem:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_ParticleSystem:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_ParticleSystem:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_ParticleSystem:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_ParticleSystem:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_ParticleSystem:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_ParticleSystem:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_ParticleSystem:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_ParticleSystem:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_ParticleSystem:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_ParticleSystem:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_ParticleSystem:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_ParticleSystem:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_ParticleSystem:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_ParticleSystem:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_ParticleSystem:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_ParticleSystem:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_ParticleSystem:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_ParticleSystem:Equals(other)
end

--- @return System_String
function UnityEngine_ParticleSystem:ToString()
end

--- @return System_Type
function UnityEngine_ParticleSystem:GetType()
end
