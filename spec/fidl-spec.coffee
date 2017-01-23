describe 'FIDL grammar', ->
    grammar = null

    beforeEach ->
        waitsForPromise ->
            atom.packages.activatePackage 'language-franca'

        runs ->
            grammar = atom.grammars.grammarForScopeName 'source.fidl'

    it 'parses the grammar', ->
        expect(grammar).toBeTruthy()
        expect(grammar.scopeName).toBe 'source.fidl'
