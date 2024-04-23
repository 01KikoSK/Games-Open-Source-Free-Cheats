#include <iostream>
#include <map>

// Enum for the different cheat options
enum CheatOptions {
    TEAM_ESP,
    NUM_CHEATS
};

// Function to display the cheat menu
void showCheatMenu() {
    std::cout << "Cheat Menu:\n";
    std::cout << "1. Team ESP\n";
    std::cout << "0. Back\n";
}

// Function to enable a specific cheat
void enableCheat(CheatOptions option, bool enable) {
    switch(option) {
        case TEAM_ESP:
            // Code to enable Team ESP
            std::cout << "Team ESP enabled.\n";
            break;
        default:
            std::cout << "Invalid cheat option.\n";
    }
}

int main() {
    // Map to store the enabled state of each cheat
    std::map<CheatOptions, bool> cheatStates;

    while(true) {
        showCheatMenu();
        int choice;
        std::cin >> choice;

        switch(choice) {
            case TEAM_ESP:
                enableCheat(TEAM_ESP, !cheatStates[TEAM_ESP]);
                break;
            case 0:
                return 0;
            default:
                std::cout << "Invalid option.\n";
        }
    }

    return 0;
}