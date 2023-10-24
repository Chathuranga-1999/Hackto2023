function valid()
{
    var n = document.getElementById("sdata").value;
    var x = document.getElementById("search").value;

    if(n=="")
    {
        alert("please enter "+x);
        return false;
    }
    if(n!=="")
    {
        return true;
    }
}