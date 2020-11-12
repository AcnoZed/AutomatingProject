from github import Github

def print_Repos():
    username = "AcnoZed"
    g = Github()
    user = g.get_user(username)
    for repo in user.get_repos():
        print(repo)

print_Repos()
