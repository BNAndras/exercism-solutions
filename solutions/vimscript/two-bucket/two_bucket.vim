function! TwoBucket(input) abort
  let l:bucketOne = a:input.bucketOne
  let l:bucketTwo = a:input.bucketTwo
  let l:goal = a:input.goal
  let l:startBucket = a:input.startBucket

  if l:goal > l:bucketOne && l:goal > l:bucketTwo
    throw "impossible"
  endif

  let l:gcdValue = s:GCD(l:bucketOne, l:bucketTwo)
  if l:goal % l:gcdValue != 0
    throw "impossible"
  endif

  return s:CreateGame(l:bucketOne, l:bucketTwo, l:goal, l:startBucket)
endfunction

function! s:CreateGame(bucketOne, bucketTwo, goal, startBucket) abort
  let l:game = {}
  let l:game.bucketOne = a:bucketOne
  let l:game.bucketTwo = a:bucketTwo
  let l:game.goal = a:goal
  let l:game.startBucket = a:startBucket

  function! l:game.Measure() abort
    let l:queue = []
    let l:visited = {}

    if self.startBucket ==# 'one'
      let l:initial_state = [self.bucketOne, 0, 1]
    else
      let l:initial_state = [0, self.bucketTwo, 1]
    endif
    call add(l:queue, l:initial_state)
    let l:visited[l:initial_state[0] . ',' . l:initial_state[1]] = 1

    while len(l:queue) > 0
      let l:current = remove(l:queue, 0)
      let l:bucketOneAmount = l:current[0]
      let l:bucketTwoAmount = l:current[1]
      let l:moves = l:current[2]

      if l:bucketOneAmount == self.goal
        return {'moves': l:moves, 'goalBucket': 'one', 'otherBucket': l:bucketTwoAmount}
      elseif l:bucketTwoAmount == self.goal
        return {'moves': l:moves, 'goalBucket': 'two', 'otherBucket': l:bucketOneAmount}
      endif

      let l:next_states = []

      let l:amount = min([l:bucketOneAmount, self.bucketTwo - l:bucketTwoAmount])
      call add(l:next_states, [l:bucketOneAmount - l:amount, l:bucketTwoAmount + l:amount])

      let l:amount = min([l:bucketTwoAmount, self.bucketOne - l:bucketOneAmount])
      call add(l:next_states, [l:bucketOneAmount + l:amount, l:bucketTwoAmount - l:amount])

      call add(l:next_states, [0, l:bucketTwoAmount])

      call add(l:next_states, [l:bucketOneAmount, 0])

      call add(l:next_states, [self.bucketOne, l:bucketTwoAmount])

      call add(l:next_states, [l:bucketOneAmount, self.bucketTwo])

      for l:state in l:next_states
        let l:nextBucketOneAmount = l:state[0]
        let l:nextBucketTwoAmount = l:state[1]

        if self.startBucket ==# 'one' && l:nextBucketOneAmount == 0 && l:nextBucketTwoAmount == self.bucketTwo
          continue
        elseif self.startBucket ==# 'two' && l:nextBucketOneAmount == self.bucketOne && l:nextBucketTwoAmount == 0
          continue
        endif

        let l:key = l:nextBucketOneAmount . ',' . l:nextBucketTwoAmount
        if !has_key(l:visited, l:key)
          let l:visited[l:key] = 1
          call add(l:queue, [l:nextBucketOneAmount, l:nextBucketTwoAmount, l:moves + 1])
        endif
      endfor
    endwhile
    
    throw "impossible"
  endfunction

  return l:game
endfunction

function! s:GCD(num1, num2)
  let l:num1 = a:num1
  let l:num2 = a:num2
  while l:num2 != 0
    let l:temp = l:num2
    let l:num2 = l:num1 % l:num2
    let l:num1 = l:temp
  endwhile
  return l:num1
endfunction
