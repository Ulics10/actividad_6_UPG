import Foundation

infix operator +++
var coleccion = [2,5,3,4]
let dicError = ["a":1,"b":2,"c":3]

prefix operator |>

func +++ (c:Int,d:Int) -> Double {
     return pow(Double(c),Double(d))
 }

prefix func |> (num: Int) {
    let orden = coleccion.sorted(by:<)
    print (orden)
}

class colecc {
    var valores : [Int]
    init (v:[Int]){
        self.valores = v
    }

    subscript (idx : Int) -> Int {
        get{
            return valores [idx]
        }
        set (nuevoValor) {
            valores [idx] = nuevoValor
        }
    }

 }

 func ExisteValor (hito:String){
     guard let existe = dicError [hito] else {
         print ("No existe")
         return
     }
     print ("existe \(existe)")
 }




let v1 = colecc(v: coleccion)
v1[3]=7

print (coleccion)
print(v1.valores)
print(ExisteValor (hito :"a"))
