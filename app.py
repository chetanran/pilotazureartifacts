import requests

def main():
    response = requests.get('https://api.github.com')
    print(f"GitHub API Status: {response.status_code}")
    print(f"Rate Limit: {response.json().get('rate_limit_url')}")

if __name__ == "__main__":
    main()