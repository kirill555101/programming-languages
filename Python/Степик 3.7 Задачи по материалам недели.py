# Суммирование двух списков
def list_sum(x, y):
    return list(map(lambda a, b: a + b, x, y))


n = int(input())
teams = {}

for i in range(n):
    data = input().split(";")

    # Счет команд
    team1_num = int(data[1])
    team2_num = int(data[3])

    # Название команд
    team1_name = data[0]
    team2_name = data[2]
    
    if team1_num > team2_num:
        
        if not teams.get(team1_name) and not teams.get(team2_name):
            teams[team1_name] = [1, 1, 0, 0, 3]
            teams[team2_name] = [1, 0, 0, 1, 0]
            
        elif not teams.get(team1_name):
            teams[team1_name] = [1, 1, 0, 0, 3]
            
            teams[team2_name] = list_sum(teams[team2_name], [1, 0, 0, 1, 0])
        elif not teams.get(team2_name):
            teams[team1_name] = list_sum(teams[team1_name], [1, 1, 0, 0, 3])
            teams[team2_name] = [1, 0, 0, 1, 0]
            
        else:
            teams[team1_name] = list_sum(teams[team1_name], [1, 1, 0, 0, 3])
            teams[team2_name] = list_sum(teams[team2_name], [1, 0, 0, 1, 0])
        
    elif team1_num < team2_num:

        if not teams.get(team1_name) and not teams.get(team2_name):
            teams[team1_name] = [1, 0, 0, 1, 0]
            teams[team2_name] = [1, 1, 0, 0, 3]
            
        elif not teams.get(team1_name):
            teams[team1_name] = [1, 0, 0, 1, 0]
            teams[team2_name] = list_sum(teams[team2_name], [1, 1, 0, 0, 3])
            
        elif not teams.get(team2_name):
            teams[team1_name] = list_sum(teams[team1_name], [1, 0, 0, 1, 0])
            teams[team2_name] = [1, 1, 0, 0, 3]
            
        else:
            teams[team1_name] = list_sum(teams[team1_name], [1, 0, 0, 1, 0])
            teams[team2_name] = list_sum(teams[team2_name], [1, 1, 0, 0, 3])

    else:

        if not teams.get(team1_name) and not teams.get(team2_name):
            teams[team1_name] = [1, 0, 1, 0, 1]
            teams[team2_name] = [1, 0, 1, 0, 1]
            
        elif not teams.get(team1_name):
            teams[team1_name] = [1, 0, 1, 0, 1]
            teams[team2_name] = list_sum(teams[team2_name], [1, 0, 1, 0, 1])
            
        elif not teams.get(team2_name):
            teams[team1_name] = list_sum(teams[team1_name], [1, 0, 1, 0, 1])
            teams[team2_name] = [1, 0, 1, 0, 1]
            
        else:
            teams[team1_name] = list_sum(teams[team1_name], [1, 0, 1, 0, 1])
            teams[team2_name] = list_sum(teams[team2_name], [1, 0, 1, 0, 1])   
    
for team, team_inf in teams.items():
    print(team, end=":")
    print(*team_inf, sep=" ")
    
    
