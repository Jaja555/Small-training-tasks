starting_coffee_list = input().split(' ')
number_of_commands = int(input())

for _ in range(number_of_commands):
    command = input().split()
    action = command[0]

    if action == 'Include':
        coffee = command[1]
        starting_coffee_list.append(coffee)

    elif action == 'Remove':
        cof_position = command[1]
        number_of_coffees = int(command[2])
        if number_of_coffees <= len(starting_coffee_list):
            if cof_position == 'first':
                starting_coffee_list = starting_coffee_list[number_of_coffees:]
            elif cof_position == 'last':
                starting_coffee_list = starting_coffee_list[:-number_of_coffees]

    elif action == 'Prefer':
        first_index = int(command[1])
        second_index = int(command[2])
        if 0 <= first_index < len(starting_coffee_list) and 0 <= second_index < len(starting_coffee_list):
            starting_coffee_list[first_index], starting_coffee_list[second_index] = starting_coffee_list[second_index], starting_coffee_list[first_index]

    elif action == 'Reverse':
        starting_coffee_list.reverse()

print("Coffees:")
print(" ".join(starting_coffee_list))
