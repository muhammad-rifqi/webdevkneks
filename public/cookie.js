let cookie = {};
var a = document.cookie.split(";");
for (var i = 0; i < a.length; i++) {
    var b = a[i].split("=");
    var [key, value] = b;
    cookie[key.trim()] = value;
}