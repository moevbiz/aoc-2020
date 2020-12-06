// open the console on the input page

// 6.1
document.body.textContent.split('\n\n').map(s => s.split('').filter((item, pos, self) => {return self.indexOf(item) == pos;}).join('').replace('\n', '')).map(t => t.length).reduce((a, b) => {return a + b;}, 0);

// 6.2
let groups = document.body.textContent.split('\n\n').map(s => s.split('\n').filter(l => l.length > 0))
let sumMatches = 0;

groups.forEach(group => {
    let matches = 0;
    if (group.length == 1) {
        matches = group[0].length;
    } else {
        groupStr = group.join('').split('').sort().join('')
        match = groupStr.match(/(.)\1+/g)
        if (match != null) {
            matches = match.filter(m => m.length == group.length).length
        } else {
            matches = 0
        }
    }
    sumMatches += matches;
});

console.log(sumMatches);