# Skills

## 触发规则

- 所有技能仅限用户通过 `/` 手动调用，不得自动触发或主动建议

## 排除目录

- `skills/in-process/` — 开发中、测试中的技能，不加载、不读取

## 目录结构

```
skills/<category>/<skill-name>/SKILL.md
```

## Frontmatter

```yaml
---
name: <skill-name>
description: <one-line>
disable-model-invocation: true
---
```

## 语言

正文使用简体中文。
