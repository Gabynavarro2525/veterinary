function sonConsecutivos(newarray )
{
        if(newarray.length < 2) return -1;
        let i = 0;
        while(i < newarray.length - 1) {
            if(Math.abs(newarray[i] - newarray[++i]) !== 1) return -1;
            
            console .log ("0 vueltas");
            return 0;
        }
for ( let x; x <newarray.length; x++){
  if (newarray[x]>newarray[x+1]){
    x = x++
    console.log(i, "vueltas");
}
}
}
let  arrayvalor = [4,2,3,1];
let finalarray = sonConsecutiv

//def test (arr)
//index = arr.find_index(1)
//if arr.sort ==arr[0...index.length] + arr[0...index -1]
//index
//else
//-1

const test = (arr) => {
    const index = arrr.indexOf(1);
    arr.sort((current_value,next_value) =>{
        return current_value - next_value;
    })
    const formatted_arr =  arr.slice (0,index);
    formatted_arr.push(...arr.slice(index, arr.length));

    if(sorted_arr.toString === formatted_arr.toString){
        return index;
    }else
    {
        return -1;
    }
}
