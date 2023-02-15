local poses = {
    ['lanhu'] = {
        ['normal'] = 'body+head+scarf',
        ['jishu'] = 'body+jishu_eye+jishu_tshirt+scarf+head',
        ['zhuxi'] = 'body+zhuxi_cloth+scarf+head',
        ['sheji'] = 'body+sheji_chocker+sheji_panda+scarf+head+sheji_ear',
        ['wenan'] = 'body+wenan_pen+wenan_penguin+scarf+head+wenan_hat'
    },
    ['lanhu2'] = {
        ['normal'] = 'body+head+scarf',
        ['jishu'] = 'body+jishu_eye+jishu_tshirt+scarf+head',
        ['zhuxi'] = 'body+zhuxi_cloth+scarf+head',
        ['sheji'] = 'body+sheji_chocker+sheji_panda+scarf+head+sheji_ear',
        ['wenan'] = 'body+wenan_pen+wenan_penguin+scarf+head+wenan_hat'
    },
    ['lanhu3'] = {
        ['normal'] = 'body+head+scarf',
        ['jishu'] = 'body+jishu_eye+jishu_tshirt+scarf+head',
        ['zhuxi'] = 'body+zhuxi_cloth+scarf+head',
        ['sheji'] = 'body+sheji_chocker+sheji_panda+scarf+head+sheji_ear',
        ['wenan'] = 'body+wenan_pen+wenan_penguin+scarf+head+wenan_hat'
    }
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
