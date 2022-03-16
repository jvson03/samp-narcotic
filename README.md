[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)


# Narcotic Roleplay : SAMP

A gamemode built from scratch for NCRP. Developed in pawn language.


## Features

- Users module
- Ban module
- Admin module
- Vehicle module
- Chat module


## Authors

- [@Jvson03](https://www.github.com/jvson03)


# Reference

### Modules

#### The file naming inside modules should be as the following

```js
    [prefix]_[content].pwn
```

### Messages

```js
    SendErrorMessage()
```

#### Used to send messages on errors.

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `playerid` | `int` | **Required**. The player id |
| `message` | `string` | **Required**. The error message |

```js
    SendUsageMessage()
```

#### Used to send messages on command usage.

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `playerid` | `int` | **Required**. The player id |
| `message` | `string` | **Required**. The usage message |


```js
    SendInfoMessage()
```

#### Used to send messages on information.

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `playerid` | `int` | **Required**. The player id |
| `message` | `string` | **Required**. The info message |

```js
    SendServerMessage()
```

#### Used to send server message.

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `playerid` | `int` | **Required**. The player id |
| `message` | `string` | **Required**. The server message |


## Color Reference (y_colors)

| Color             | Hex                                                                |
| ----------------- | ------------------------------------------------------------------ |
| Server Messages | X11_INDIAN_RED |
| Usage Messages | X11_LIGHT_YELLOW |
| Error Messages | X11_VIOLET_RED_1 |
| Info Messages | Y_LIGHT_SKY_BLUE |


## Deployment

To deploy this project make sure you have sampctl and xampp installed.
Grab the sql files from the modules and import them to your database.
Open the `mysql.ini` file and enter your database details.

Ensuring the dependencies!
```bash
  sampctl package ensure
```

Building the gamemode!
```bash
  sampctl package build
```

Running the gamemode!
```bash
  sampctl package run
```

## Support

For support, email jvsonlamaj@gmail.com or DM me in Discord (JasonTheMan#7125).


## Contributing

Contributions are always welcome!

Contact me in Discord (JasonTheMan#7125) for ways to get started.

Please adhere to this project's `code of conduct`.


## Lessons

Was a little annoying at start as I had left the community of SAMP a long time ago, but I eventually got the hang of it.

Getting used to mysql queries and how sql syntax works.

