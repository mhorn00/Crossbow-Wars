include('shared.lua')

function ENT:Draw()
    self:DrawModel()       -- Draw the model.
    if (GetConVar("cw_show_powerup_hitbox"):GetInt()~=0) then
        render.SetColorMaterial()
	    render.DrawSphere(self:WorldSpaceCenter(), 50, 50, 50, Color( 175, 0, 0, 100 ) )
    end
end

CreateConVar("cw_show_powerup_hitbox", "0", FCVAR_LUA_CLIENT, "Show Hitbox for Powerups")