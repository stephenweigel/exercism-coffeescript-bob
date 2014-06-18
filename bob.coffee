class Bob
  hey: (input) ->
    if this.isYelling(input)
      return 'Woah, chill out!'
    else if this.isQuestion(input)
      return 'Sure.'
    else if this.isSilence(input)
      return 'Fine. Be that way!'
    else
      return 'Whatever.'

  isYelling: (input) ->
    this.yellingPattern.test(input) && input == input.toUpperCase()

  isQuestion: (input) ->
    input.slice(-1) == '?'
  
  isSilence: (input) ->
    input == '' || input == '   '

  yellingPattern: /[A-Z]{2,}/

module.exports = Bob

