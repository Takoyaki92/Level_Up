
const initTimer= () => {
  const timer = document.querySelector('.timer');
  const start = document.querySelector('.start span');
  const finish = document.getElementById('finish');
  const timeRecordHour = document.getElementById('study_session_end_time_4i');
  const timeRecordMinute = document.getElementById('study_session_end_time_5i');

  let recordStartTime, recordEndTime;
  let mil = 0, sec = 0, min = 0, t;
  let timerRunning = false;

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
    timerRunning = true;
    t = setTimeout(add, 10);
  };

  function resetTimer() {
    timer.innerText = "00:00:00"
    mil=0;
    sec=0;
    min=0;
  };

  function stopTimer() {
    timerRunning = false;
    clearTimeout(t);
  };

finish.addEventListener('click', () => {
  stopTimer();
  const seconds = calculateEnd();
  timeRecordHour.value = Math.round(seconds / 3600).toString().padStart(2, "0");
  timeRecordMinute.value = Math.round(seconds / 60).toString().padStart(2, "0");
}); 

  start.onclick = () =>  {
    if (timerRunning) {
      stopTimer()
      start.innerText = 'Start';

    }else {
      timerStart();
      calculateStart();
      start.innerText = 'Pause';
    }
  }

  function calculateStart() {
    recordStartTime = performance.now();
  };

  function calculateEnd() {
    recordEndTime = performance.now();
    let timeDiff = recordEndTime - recordStartTime;
    timeDiff /= 1000; 
    
    let seconds = Math.round(timeDiff);
    return seconds
  };

};

export { initTimer }

