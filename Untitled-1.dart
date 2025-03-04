<script>
// JavaScript code for countdown with animations

// Function to update the countdown
function updateCountdown() {
    const targetDate = new Date('January 5, 2025 23:59:59 GMT-0600'); // Central American Time Zone
    const now = new Date();
    const timeDifference = targetDate - now;

    if (timeDifference <= 0) {
        clearInterval(countdownInterval);
        document.getElementById('days').innerText = '0';
        document.getElementById('hours').innerText = '0';
        document.getElementById('minutes').innerText = '0';
        document.getElementById('seconds').innerText = '0';
        return;
    }

    const days = Math.floor(timeDifference / (1000 * 60 * 60 * 24));
    const hours = Math.floor((timeDifference % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    const minutes = Math.floor((timeDifference % (1000 * 60 * 60)) / (1000 * 60));
    const seconds = Math.floor((timeDifference % (1000 * 60)) / 1000);

    updateElement('days', days);
    updateElement('hours', hours);
    updateElement('minutes', minutes);
    updateElement('seconds', seconds);
}

// Function to update the text with animation
function updateElement(id, newValue) {
    const element = document.getElementById(id);
    const oldValue = element.innerText;

    if (oldValue === newValue.toString()) return;

    

    setTimeout(() => {
        element.innerText = newValue;
    }, 500);
}

// Start the countdown interval
const countdownInterval = setInterval(updateCountdown, 1000);



</script>