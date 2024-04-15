-- cheat_menu.lua

-- Define a table to store the cheat codes
local cheats = {
    ["unlimited_gold"] = false,
    ["instant_build"] = false,
    ["nukes_for_all"] = false
}

-- Define a function to toggle the cheat codes
function toggle_cheat(cheat)
    cheats[cheat] = not cheats[cheat]
    print("Cheat '" .. cheat .. "' is now " .. (cheats[cheat] and "enabled" or "disabled"))
end

-- Define a function to display the cheat menu
function show_cheat_menu()
    print("Cheat Menu:")
    print("1. Unlimited Gold")
    print("2. Instant Build")
    print("3. Nukes for All")
    print("Enter the number of the cheat to toggle it")
end

-- Define a function to handle user input
function handle_input()
    local input = io.read()
    if input == "1" then
        toggle_cheat("unlimited_gold")
    elseif input == "2" then
        toggle_cheat("instant_build")
    elseif input == "3" then
        toggle_cheat("nukes_for_all")
    else
        print("Invalid input. Please enter the number of the cheat to toggle it.")
    end
end

-- Show the cheat menu and handle user input in a loop
while true do
    show_cheat_menu()
    handle_input()
end