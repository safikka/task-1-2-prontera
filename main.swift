func keUSD(duit: Float) {
  let konversi: Float = duit / 14500
  print("Hasil konversi ke USD: $ \(konversi)")
}

func keIDR(duit: Float) {
  let konversi: Float = duit * 14500
  print("Hasil konversi ke IDR: Rp.\(konversi)")
}

func KuadratPositif(num: Int){
  let kuadrat: Int = num * num
  print("Hasil kuadrat: \(kuadrat)")
}

func PangkatDua(num: Int){
  for i in 1...num{
    let hasil = i * i
    print(hasil, terminator:" ")
  }
}

func BagiHai(num: Int){
  for i in 1...num{
    if i % 3 == 0 {
      print("Hai", terminator:" ")
    } else {
      print(i, terminator:" ")
    }
  }
}

func KuadratKebalik(num: Int){
  for i in stride(from:num, to:0, by:-1){
    let hasil = i * i
    print(hasil, terminator:" ")
  }
}

print("===========================================")
print("|      Task 1&2 Prontera by. Mahdy        |")
print("===========================================")
print("Ketik: IDRtoUSD / USDtoIDR / KuadratPositif")
print("Ketik: Pangkat-2 / BagiHai / KuadratKebalik")
print("Ketik: quit untuk keluar loop")
while let str = readLine(){
  guard str != "quit" else {
        break
  }
  switch str{
      case "IDRtoUSD":
        print("Masukkan nilai(IDR) yang mau dikonversi ke USD:")
        let input_idr = readLine() ?? ""
        let duit = Float(input_idr) ?? 0
        keUSD(duit: duit)
        break
      case "USDtoIDR":
        print("Masukkan nilai(USD) yang mau dikonversi ke IDR:")
        let input_usd = readLine() ?? ""
        let duit = Float(input_usd) ?? 0
        keIDR(duit: duit)
        break
      case "KuadratPositif":
        print("Masukkan nilai yang mau dikuadratin:")
        let input_kuadrat = readLine() ?? ""
        let nilai = Int(input_kuadrat) ?? 0
        if nilai >= 0{
          KuadratPositif(num: nilai)
        } else {
          print("Harus nilai positif!")
        }
        break
      case "Pangkat-2":
        print("Masukkan nilai:")
        let input_kuadrat = readLine() ?? ""
        let nilai = Int(input_kuadrat) ?? 0
        if nilai <= 100{
          PangkatDua(num: nilai)
        } else {
          print("Nilai lebih dari 100 (n <= 100)")
        }
        break
      case "BagiHai":
        print("Masukkan nilai:")
        let input_kuadrat = readLine() ?? ""
        let nilai = Int(input_kuadrat) ?? 0
        if nilai <= 1000{
          BagiHai(num: nilai)
        } else {
          print("Nilai lebih dari 1000 (n <= 1000)")
        }
        break
      case "KuadratKebalik":
        print("Masukkan nilai:")
        let input_kuadrat = readLine() ?? ""
        let nilai = Int(input_kuadrat) ?? 0
        if nilai <= 1000000{
          KuadratKebalik(num: nilai)
        } else {
          print("Nilai lebih dari 1.000.000 (n <= 1.000.000)")
        }
        break
      default:
        print("\nGa sesuai format")
        print("Ketik: IDRtoUSD / USDtoIDR / KuadratPositif")
  }
  break
}