local poses = {
    ['ergong'] = {
        ['normal'] = 'body+mouth_smile+eye_normal+eyebrow_normal+hair',
    },
    ['gaotian'] = {
        ['normal'] = 'body+mouth_smile+eye_normal+eyebrow_normal+hair',
        ['cry'] = 'body+mouth_smile+eye_cry+eyebrow_normal+hair',
    },
    ['qianye'] = {
        ['normal'] = 'body+mouth_close+eye_normal+eyebrow_normal+hair',
    },
    ['xiben'] = {
        ['normal'] = 'body+mouth_close+eye_normal+eyebrow_normal+hair',
    },
    ['lanhu'] = {
        ['normal'] = 'tiger',
        ['jishu'] = 'tiger+jishu_eye+jishu_tshirt',
        ['zhuxi'] = 'tiger+zhuxi_cloth',
        ['sheji'] = 'tiger+sheji_chocker+sheji_ear+sheji_panda',
        ['wenan'] = 'tiger+wenan_hat+wenan_pen+wenan_penguin'
    },

    ['cg'] = {
        ['rain'] = 'rain_back',
        ['rain_final'] = 'rain_back+rain_text',
    },
}

function get_pose(obj, pose_name)
    if string.find(pose_name, '+') then
        return pose_name
    end

    local pose = poses[obj.luaGlobalName] and poses[obj.luaGlobalName][pose_name]
    if pose then
        return pose
    end

    warn('Unknown pose ' .. dump(pose_name) .. ' for composite sprite ' .. dump(obj))
    return pose_name
end
