module StateTax
  TaxTable = {MA: 5.2, CONN: 6.2, NH: 0.0, VT: 5.2, ME: 5.7 }

  def tax_rate(state)
    TaxTable[state.to_sym]
  end

end