class NucleotideCount
  constructor: (strand) ->
    @strand = strand
    @nucleotideCounts = A: 0, C: 0, G: 0, T: 0
    @strand.split("").reduce (acc, curr) ->
      acc[curr] += 1
      acc
    , @nucleotideCounts

  count: (nucleotide) ->
    this.validate(nucleotide)
    @nucleotideCounts[nucleotide]

  validate: (nucleotide) ->
    throw new Error("Invalid nucleotide strand") if /[^ACGT]/.test(@strand)
    throw new Error("Invalid nucleotide") if !@nucleotideCounts.hasOwnProperty(nucleotide)

module.exports = NucleotideCount
