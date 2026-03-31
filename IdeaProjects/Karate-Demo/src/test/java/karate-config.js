function fn()
{
var config = { "name":"Carlos Rios" };
karate.configure('connectTimeout', 5000);
karate.configure('readTimeout', 5000);
return config
}