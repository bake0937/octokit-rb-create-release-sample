require 'octokit'
require 'dotenv'
Dotenv.load

client = Octokit::Client.new(access_token: ENV['GITHUB_PERSONAL_ACCESS_TOKEN'])

# 最新のプルリクエストを取得
pr = client.pull_requests(ENV['GITHUB_REPOSITORY'], state: 'closed', per_page: 1)[0]

tag_name = Time.now.strftime("%Y%m%d-%H%M%S%z")
pr_title = pr[:title]
merge_comment = "pull request: ##{pr[:number]}"

# リリースを作る
client.create_release(ENV['GITHUB_REPOSITORY'], tag_name, name: pr_title, body: merge_comment)