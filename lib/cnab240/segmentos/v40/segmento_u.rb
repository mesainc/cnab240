module Cnab240::V40
  class SegmentoU < BinData::Record
    include Cnab240::DefaultMixin
    include Cnab240::SegmentoMixin

    lstring :controle_banco, length: 3, pad_byte: '0'
    lstring :controle_lote, length: 4, pad_byte: '0'
    string :controle_registro, length: 1, initial_value: '3', pad_byte: '0'

    lstring :servico_numero_registro, length: 5, pad_byte: '0'
    string :servico_codigo_segmento, length: 1, initial_value: 'U', pad_byte: ' '
    lstring :servico_tipo_movimento, length: 1, pad_byte: '0'
    lstring :servico_codigo_movimento, length: 2, pad_byte: '0'

    lstring :pagamento_valor_multa, length: 15, pad_byte: '0'
    lstring :pagamento_valor_desconto, length: 15, pad_byte: '0'
    lstring :pagamento_valor_abatimento, length: 15, pad_byte: '0'
    lstring :pagamento_valor_iof, length: 15, pad_byte: '0'
    lstring :pagamento_valor_pago, length: 15, pad_byte: '0'
    lstring :pagamento_valor_liquido, length: 15, pad_byte: '0'
    lstring :pagamento_valor_outras_despesas, length: 15, pad_byte: '0'
    lstring :pagamento_valor_outros_creditos, length: 15, pad_byte: '0'
    lstring :pagamento_data_ocorrencia, length: 8, pad_byte: '0'
    lstring :pagamento_data_efetivacao, length: 8, pad_byte: '0'

    lstring :sacado_codigo, length: 4, pad_byte: ' '
    lstring :sacado_data_ocorrencia, length: 8, pad_byte: ' '
    lstring :sacado_valor_ocorrencia, length: 13, pad_byte: '0'
    lstring :sacado_complem_ocorrencia, length: 30, pad_byte: ' '

    lstring :cod_bco_corr, length: 3, pad_byte: '0'
    lstring :nosso_num_bco_corr, length: 20, pad_byte: '0'

    string :cnab_g004_1, length: 7, pad_byte: ' '
  end
end
