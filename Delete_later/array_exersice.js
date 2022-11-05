function sonConsecutivos(newarray )
{
        if(newarray.length < 2) return -1;
        let i = 0;
        while(i < newarray.length - 1) {
            if(Math.abs(newarray[i] - newarray[++i]) !== 1) return -1;
            
            console .log ("0 vueltas");
            return 0;
        }
for ( var x; x <newarray.length; x++){
  l= 1
  if (newarray[x]>newarray[l]){
    x = x++
    l = l++
    console.log(i, "vueltas");
}
}
}
let  arrayvalor = [1,2,3,4];
let finalarray = sonConsecutiv