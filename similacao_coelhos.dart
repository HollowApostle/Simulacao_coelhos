void main() {
  print("=== SIMULADOR DE POPULAÇÃO DE COELHOS ===\n");
  
  int jovens = 2;
  int adultos = 0;
  int mes = 0;
  
  print("--- FASE DE CRESCIMENTO (12 meses) ---");
  
  for (mes = 1; mes <= 12; mes++) {
    
    int novosAdultos = jovens;
    int novosJovens = adultos;
    
    // Atualiza as populações
    adultos += novosAdultos;
    jovens = novosJovens;
    
    int populacaoTotal = jovens + adultos;
    
    print("Fim do Mês $mes: População de coelhos: $populacaoTotal, Jovens: $jovens, Adultos: $adultos");
  }
  
  print("\n--- INTRODUÇÃO DO PREDADOR ---");
  print("A partir do mês 13 com a predação.\n");
  
  for (int mesComPredador = 13; mesComPredador <= 24; mesComPredador++) {
    int novosAdultos = jovens;
    int novosJovens = adultos;
    
    adultos += novosAdultos;
    jovens = novosJovens;
    
    double fatorSobrevivencia = 0.25;
    
    jovens = (jovens * fatorSobrevivencia).round();
    adultos = (adultos * fatorSobrevivencia).round();
    
    int populacaoTotal = jovens + adultos;
    
    print("Fim do Mês $mesComPredador: População de coelhos: $populacaoTotal, Jovens: $jovens, Adultos: $adultos");
    
    if (populacaoTotal == 0) {
      print("\n⚠  A população de coelhos foi extinta no mês $mesComPredador!");
      break;
    }
  }
}