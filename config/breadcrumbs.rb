crumb :root do
  link "Home", root_path
end

crumb :list_users do
  link "ユーザ一覧", list_users_path
end

crumb :search_users do
  link "ユーザ検索", search_users_path
  parent :list_users
end

crumb :user do |user|
  link "プロフィール", user
  parent :list_users
end

crumb :events do
  link "イベントの一覧・削除", events_path
end

crumb :new_event do
  link "イベントの新規作成", new_event_path
end

crumb :edit_event do
  link "イベントの編集", edit_event_path
  parent :events
end

crumb :event do |event|
  link "イベント詳細", event
  parent :events
end

crumb :unauthorized_users do
  link "未認証のユーザ一覧", unauthorized_users_path(:participant)
end

crumb :unauthorized_graduates do
  link "未認証の修了生一覧", unauthorized_users_path(:graduate)
end

crumb :authorize_user do
  link "ユーザの認証", authorize_user_path
  parent :unauthorized_users
end

crumb :guidances do
  link "説明会の一覧", guidances_path
end

crumb :new_guidance do
  link "説明会の新規作成", new_guidance_path
end

crumb :edit_guidance do
  link "説明会の編集", edit_guidance_path
  parent :guidances
end

crumb :guidance do
  link "説明会の詳細", guidance_path
  parent :guidances
end

crumb :certificates do
  link "証明書発行依頼の一覧", certificates_path
end

crumb :new_certificate do
  link "証明書発行依頼の新規作成", new_certificate_path
end

crumb :edit_certificate do
  link "証明書発行依頼の編集", edit_certificate_path
  parent :certificates
end

crumb :certificate do
  link "証明書発行依頼の詳細", show_certificate_path
  parent :certificates
end

crumb :statistics do
  link "統計分析", statis_path
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
