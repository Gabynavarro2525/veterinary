function sonConsecutivos(newarray) {
  if(newarray.length < 1) return -1;

  let i = 0;
  while(i < newarray.length - 1) {
    if (Math.abs(newarray[i] - newarray[++i]) !== 1) return -1;

    console.log("0 vueltas");
    return 0;
  }

  for (let x = 0; x < newarray.length; x++) {
    if (newarray[x] > newarray[x++]){
      x = x++
      console.log(x, "vueltas");
    }
  }
}
let  arrayvalor = [1,2];
sonConsecutivos(arrayvalor)
