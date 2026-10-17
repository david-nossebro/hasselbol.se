# hasselbol.se

Landing page for [hasselbol.se](https://hasselbol.se). Plain HTML5 and CSS — no framework, no build step.

## Structure

```
index.html      Markup
styles.css      Styling
assets/         Static assets (favicon)
```

## Develop

```sh
pnpm install
pnpm dev      # live-reloading server on http://localhost:4321
```

## Preview / serve

```sh
pnpm start    # static server on http://localhost:4321
```

Port `4321` is the default (port 3000 is often in use by other projects). Override it with the
`PORT` environment variable:

```sh
PORT=8080 pnpm dev
```

## Deploy

The site is fully static. Publish the repository root (`index.html`, `styles.css`, `assets/`)
to any static host, or enable GitHub Pages for the repo.
