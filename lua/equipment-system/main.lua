-- started with the add-on Scenario_with_robots as an example of how to do this stuff

helper = wesnoth.require "lua/helper.lua"
-- T = helper.set_wml_tag_metatable {}
T = wml.tag
items = wesnoth.require "lua/wml/items.lua"
_ = wesnoth.textdomain "wesnoth"
                


function wol_item_sys_require(script)
        -- I use dofile instead of , require because it allows me to reload
        -- the whole lua logics (for my scenarios that means nearly all of
        -- the logic)
        -- without having to quit the game and press F5 or close Wesnoth.
        -- thats pretty cool feature for debugging compared to wml
        -- debugging.
        -- maybe i'll change that for release but i don't see a good reason
        -- to do so, bause the time it needs is not really noticeable i
        -- think.
        return wesnoth.dofile('~add-ons/War_of_Legends/lua/equipment-system/' .. script .. '.lua')
end

-- I have no use for this feature...yet
-- Gui_recall2 = wol_item_sys_require("Recall_Menu")

Status_test2 = wol_item_sys_require("Status_Test")
--Debug_test2 = wol_item_sys_require("debug_utils")
equipment_list = wol_item_sys_require("equipment_list")
equipment_write = wol_item_sys_require("equipment_write")

-- have not considered adding the shops yet
-- Trader_Menus = wol_item_sys_require("Trader_Menus")
-- Trader_Menus2 = wol_item_sys_require("Trader_Menus2")

wol_wml_tags = wol_item_sys_require("wol_wml_tags")
wol_helper = wol_item_sys_require("wol_helper")
