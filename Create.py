import requests
import os
import sys
from git import Repo
from github import Github

def create_Repo():
    script_name = sys.argv[1]
    repo_Git = Repo(script_name)
    token = input("Token :")
    github = Github(token)
    user = github.get_user()
    repo_GitHub = user.create_repo(sys.argv)

create_Repo()