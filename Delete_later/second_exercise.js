const array = "hola tu";
const evaluar = array.replace(/\s+/g, '')

if(evaluar.length > 139 ||evaluar.length <1) 
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






const array2 = "a".repeat(139);
const evaluar2 = array2.replace(/\s+/g, '')
let reg = /(.)\1{2}/
let result = reg.test(array2);
if(evaluar2.length > 139||evaluar2.length<1|| result.toString() === "true") 
{
    console.log("False")
}
 
else
{
const UpperCaseArray2 = array2.replace(/(^\w{1})|(\s+\w{1})/g, letra => letra.toUpperCase());
let ReplaceArray2
ReplaceArray2 = UpperCaseArray2.replace(/\s+/g, '')
hashtag2 = "#" + ReplaceArray2
console.log(hashtag2)
}

