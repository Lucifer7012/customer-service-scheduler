# 项目协作口令

这个项目在不同电脑、不同 Codex 会话之间协作时，默认使用下面两句固定口令：

- `开始前帮我同步最新代码`
- `改完了，帮我检查并同步到 GitHub`

对应操作：

- 前者对应 `tools\sync-start.cmd` 或 `.\tools\sync-start.ps1`
- 后者对应 `tools\sync-finish.cmd` 或 `.\tools\sync-finish.ps1 -Message "简短说明这次改动"`

## 每次改动后的收尾约定

- 更新 `FEATURE_LOG.md`，记录本次功能、规则和验证方式。
- 更新 `docs/CHANGELOG.md`，记录简短更新流水。
- 更新 `docs/PROJECT_STATUS.md`，记录当前状态、测试方式和已知注意点。
- 如接手流程、下一步或风险有变化，更新 `docs/HANDOFF.md`。
- 不记录 API Key、密码、Token、Cookie 或任何真实密钥。

## 新会话先读

如果是新会话，先读取：

- `docs/HANDOFF.md`
- `docs/PROJECT_STATUS.md`
- `docs/CHANGELOG.md`
- `FEATURE_LOG.md`
- `agent.md`

