import { writable } from "svelte/store";
import { browser } from "$app/env";

//Fullscreen
export const playgame = writable(browser && (localStorage.getItem("playgame") || "close"));
playgame.subscribe((val) => browser && (localStorage.playgame = val));


//username
export const userName = writable(
    browser && (localStorage.getItem("userName") || "admin")

);
userName.subscribe((val) => browser && (localStorage.userName = val));

//status login 
export const logins = writable(
    browser && (localStorage.getItem("logins") || "logout")

);
logins.subscribe((val) => browser && (localStorage.logins = val));


//Fullscreen
export const screen = writable(browser && (localStorage.getItem("screen") || "close"));
screen.subscribe((val) => browser && (localStorage.screen = val));



//url router
export const routers = writable(browser && (localStorage.getItem("routers") || "hid"));

routers.subscribe((val) => browser && (localStorage.routers = val));



/*  1
const userNamer = JSON.(browser && localStorage.getItem("user")) || {
    name: "admin",
    id: "123"
};


export const user = writable(browser && userNamer);

user.subscribe(
    (val) => browser && (localStorage.fruits = JSON.stringify(val))
);
*/


/* 2
export const userName = writable(
    browser && (localStorage.getItem("userName") || "admin")

);

userName.subscribe((val) => browser && (localStorage.userName = val));
*/


