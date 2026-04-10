# blog.orcastration.ai

Blog for the Orca platform. Built with Astro (static site).

## Commands

Requires Node 22 (see `.nvmrc`) and pnpm 10.33.0.

```sh
pnpm install       # install dependencies
pnpm dev           # dev server on localhost:4321
pnpm build         # build to dist/
pnpm lint          # astro check + eslint
pnpm lint:fix      # eslint with auto-fix
pnpm test          # run vitest
pnpm verify        # lint + test with coverage (run before pushing)
```

## Structure

- `src/pages/` — file-based routing, each `.astro` file becomes a page
- `src/layouts/Base.astro` — shared HTML shell (meta tags, fonts, OG tags, ambient background)
- `src/components/` — reusable Astro components (PascalCase)
- `public/` — static assets (favicon, robots.txt)
- `terraform/` — IaC for S3 + CloudFront static hosting

## Design Tokens

All visual values are `--orca-*` CSS custom properties from the `@orcastration-ai/design` package. Always use tokens — never hardcode colors, spacing, or fonts.

Key tokens:
- **Colors:** `--orca-abyss` (bg), `--orca-surface`, `--orca-breach` (white), `--orca-signal` (cyan accent), `--orca-current` (blue accent), `--orca-mist`, `--orca-error`
- **Fonts:** `--orca-font-display`, `--orca-font-body` (Inter), `--orca-font-mono` (JetBrains Mono)
- **Sizes:** `--orca-text-hero`, `--orca-text-section`, `--orca-text-sub`, `--orca-text-body` (all fluid clamp values)
- **Spacing:** `--orca-section-pad`, `--orca-container-max`, `--orca-container-gutter`
- **Radii:** `--orca-radius-sm` through `--orca-radius-xl`

## Adding a Page

1. Create `src/pages/<slug>.astro`
2. Import and use the `Base` layout from `src/layouts/Base.astro`
3. Pass `title` and `description` props to `Base`

## Adding a Component

1. Create `src/components/<Name>.astro` (PascalCase)
2. Import it in the page that uses it
3. Use `--orca-*` design tokens — no hardcoded values

## Deployment

- Push to `main` deploys to **dev** (`blog.dev.orcastration.ai`)
- Git tag `v*` creates a GitHub Release and deploys to **prod** (`blog.orcastration.ai`)
- Site ID for SSM parameter lookups: `blog-orcastration-ai`
