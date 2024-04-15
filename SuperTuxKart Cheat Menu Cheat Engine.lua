-- cheat_menu.lua

-- Define a table to store the cheat codes
local cheats = {
    ["god_mode"] = false,
    ["infinite_ammo"] = false,
    ["level_select"] = false
}

-- Define a function to toggle the cheat codes
function toggle_cheat(cheat)
    cheats[cheat] = not cheats[cheat]
    print("Cheat '" .. cheat .. "' is now " .. (cheats[cheat] and "enabled" or "disabled"))
end

-- Define a function to display the cheat menu
function show_cheat_menu()
    print("Cheat Menu:")
    print("1. God Mode")
    print("2. Infinite Ammo")
    print("3. Level Select")
    print("Enter the number of the cheat to toggle it")
end

-- Define a function to handle user input
function handle_input()
    local input = io.read()
    if input == "1" then
        toggle_cheat("god_mode")
    elseif input == "2" then
        toggle_cheat("infinite_ammo")
    elseif input == "3" then
        toggle_cheat("level_select")
    else
        print("Invalid input. Please enter the number of the cheat to toggle it.")
    end
end

-- Show the cheat menu and handle user input in a loop
while true do
    show_cheat_menu()
    handle_input()
end