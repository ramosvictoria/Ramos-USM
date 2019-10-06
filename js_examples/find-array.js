// Victoria Ramos
//Practice with js and html
//See HTML for instructions on how to print answer

var array1=[3,1,1,'a','a',3,'b','f','a',1,'a']; //array to test
var init = 1;
var tracker = 0;
var object;
for (var x = 0; x < array1.length; x++)
{
    for (var y = x; y < array1.length; y++)
    {
        if (array1[x]== array1[y])
            tracker++;
        if (init < tracker)
        {
            init = tracker;
            object = array1[x];
        }
    }
    tracker = 0;
}
console.log(object + (" " + init + " times"));
