workflow "New workflow" {
  on = "push"
  resolves = ["Mirror Action"]
}

action "Mirror Action" {
  uses = "./"
  secrets = ["GIT_PASSWORD"]
  args = "https://gitlab.com/nhsllc/mirror-action.git"
  env = {
    GIT_USERNAME = "nhsllc-integrations"
  }
}
