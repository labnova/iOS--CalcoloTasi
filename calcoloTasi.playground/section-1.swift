// Playground - noun: a place where people can play

var RenditaCatastale = 60.00
var impostaComunale = 2.5
let aliquota = 1.06

/*
* nel caso la casa venga dichiarata inagibile
*
*bool inagibile = false
*if(inagibile == true) { baseImponibile = baseImponibile / 2 }
*/


func rivalutazione(var rc: Double) -> Double {
    
    var magg : Double
    magg = RenditaCatastale * 5 / 100
    rc = rc + magg
    return rc
}

var baseImponibile = rivalutazione(RenditaCatastale)*160





var impostaLorda = baseImponibile*impostaComunale/1000

var rataAcconto = impostaLorda / 2
var rataSaldo = rataAcconto

