
const initTimer= () => {
  const timer = document.querySelector('.timer')
  const start = document.querySelector('.start')
  const stop = document.querySelector('.stop')
  const reset = document.querySelector('.reset')
  let mil = 0, sec = 0, min = 0, t;

  function add() {
    mil++;
    if (mil >= 100) {
      mil = 0;
      sec++
      if (sec >= 60) {
        sec = 0;
        min++
      };
    };
    
    function makeTimeString() {
      return (min ? (min > 9 ? min : "0" + min) : "00") + ":" + (sec ? (sec > 9 ? sec : "0" + sec) : "00") + ":" + (mil > 9 ? mil : "0" + mil)
    };

      timer.innerText = makeTimeString()
      timerStart();
  };

  function timerStart() {
    t = setTimeout(add, 10);
  };

  function resetTimer() {
    timer.innerText = "00:00:00"
    mil=0;
    sec=0;
    min=0;
  };

  function stopTimer() {
    clearTimeout(t);
  };

  start.onclick = timerStart;
  stop.onclick = stopTimer;
  reset.onclick = resetTimer;

};

export { initTimer }