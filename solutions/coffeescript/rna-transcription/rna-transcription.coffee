class RnaTranscription
  constructor: (@dna) ->

  toRna: ->
    @dna.split('').map(@translate).join('')

  translate: (nucleotide) ->
    switch nucleotide
      when 'G' then 'C'
      when 'C' then 'G'
      when 'T' then 'A'
      when 'A' then 'U'

module.exports = RnaTranscription
