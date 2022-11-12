const array = "hola tu";
const evaluar = array.replace(/\s+/g, '')

if(evaluar.length > 139) 
{
    console.log("False")
}
 if(evaluar.length <1){
     console.log("False")
 }
else
{

const UpperCaseArray = array.replace(/(^\w{1})|(\s+\w{1})/g, letra => letra.toUpperCase());
let ReplaceArray
ReplaceArray = UpperCaseArray.replace(/\s+/g, '')
hashtag = "#" + ReplaceArray

console.log(UpperCaseArray)
console.log(ReplaceArray)
console.log(hashtag)
}
