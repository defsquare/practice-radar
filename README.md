# Practice Radar

A standalone HTML radar to visualize how engineering practices are adopted across teams.

![Screenshot](https://img.shields.io/badge/output-single%20HTML%20file-blue)

## Preview

- [Netflix](https://defsquare.github.io/practice-radar/examples/netflix.html) — dark theme, resilience & chaos engineering focus
- [Spotify](https://defsquare.github.io/practice-radar/examples/spotify.html) — green theme, squad autonomy & platform engineering
- [Anthropic](https://defsquare.github.io/practice-radar/examples/anthropic.html) — warm theme, AI safety & reliability

Data files are in [`examples/`](examples/).

## Quick Start

1. Copy the example data file and edit it with your own teams, practices, and scores:

```bash
cp data.example.json data.json
```

2. Build the radar:

```bash
make
```

3. Open `radar.html` in your browser.

## Data Format

`data.json` contains all your configuration:

| Field | Description |
|---|---|
| `title` | Main heading displayed at the top |
| `subtitle` | Description below the title |
| `logo` | URL to a logo image (leave empty to hide) |
| `teams` | Array of team names (column headers) |
| `theme` | Colors for background, text, accent, borders, quadrants, etc. |
| `adoptionLevels` | Scoring scale with value, label, color, and text color |
| `sections` | Practice groups (become radar quadrants) |
| `notes` | Optional notes displayed at the bottom |

### Practices

Each practice has:
- `name` — display name
- `link` — URL to documentation (optional, leave empty string)
- `levels` — array of scores, one per team, matching `adoptionLevels` values

### Adoption Levels

Default scale (customizable):

| Value | Label | Meaning |
|---|---|---|
| 0 | N/A | Not applicable to this team |
| 1 | Not Used | Known but not adopted |
| 2 | Emergent | Partially adopted |
| 3 | Intentional | Fully adopted |

## How It Works

`make` injects the contents of `data.json` into `template.html` at the `/** @DATA@ */` placeholder, producing a self-contained `radar.html` file. No server required.

## Requirements

- `make`
- `python3` (available on macOS and most Linux distributions)
