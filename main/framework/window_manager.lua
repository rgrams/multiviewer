local M = {}

-- These are set from the render script. Defined here for autocomplete purposes
M.worldHalfx = 400
M.worldHalfy = 275
M.halfx = 400
M.halfy = 275
M.zoom = 1
M.zoom_listeners = {}

M.scale = 1 -- view scale factor from render script
M.barOffset = vmath.vector3() -- x, y size of black bars outside viewport

M.camPos = vmath.vector3()
M.playerPos = vmath.vector3()

M.render_update = nil

function M.mouse_to_world(mx, my) -- Uses screen_x, screen_y
	return (mx - M.halfx)/M.scale, (my - M.halfy)/M.scale
end

function M.set_cam_pos(pos)
	M.camPos = pos
	go.set_position(M.camPos, "camera")
end

function M.set_zoom(newZoom)
	M.zoom = newZoom
	for i, v in ipairs(M.zoom_listeners) do
		msg.post(v, "zoom", {zoom = M.zoom})
	end
end

return M
