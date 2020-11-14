import requests
import os
import sys
from git import Repo
from github import Github

def create_Repo():
    script_name = sys.argv[1]
    token = input("Token :")
    github = Github(token)
    user = github.get_user()
    repo_GitHub = user.create_repo(script_name)

create_Repo()