
const button = document.getElementById("do");
button.addEventListener('click', getlist)

// 2
const button1 = document.getElementById('fil');
button1.addEventListener('click', fillter)
// 3
const button2 = document.getElementById('maplist');
button2.addEventListener('click', getlistbymap)
// funciton get data


// bài 1
function getlist() {
    $.getJSON("https://api.myjson.com/bins/m8brz", function (data) {
        let val1 = "first_name";
        let val2 = "last_name";
        var firstname = '';
        var lastname = '';
        data.forEach(obj => {
            Object.entries(obj).forEach(([key, value]) => {
                if (`${key}` == val1) {
                    firstname = `${value}`;
                }

                if (`${key}` == val2) {
                    lastname = `${value}`;
                }


            });
            console.log('your name : ' + firstname + ' ' + lastname)
            console.log('-------------------');
        });

    });
}


/////////////////////////
// bài tăp 2


function FilterAge(user) {
    if (isage(user.age) && user.age != 0) {
        return true;
    }
    invalidEntries++;
    return false;

}
function FilterGen(gen) {
    return gen == "Male";
}

function isage(obj) {
    return obj !== undefined && typeof (obj) === 'number' && !isNaN(obj);
}


function fillter() {
    $.getJSON("https://api.myjson.com/bins/m8brz", function (data) {
        var newage = data.filter(function (el) {
            return el.age < 40 &&
                el.gender == "Male";
        });

        newage.forEach(obj => {
            Object.entries(obj).forEach(([key, value]) => {

                console.log(`${key}` + " : " + `${value}`)

            });

            console.log('-------------------');
        });

    });
}

// bài 3 : Use MAP


function getlistbymap() {
    $.getJSON("https://api.myjson.com/bins/m8brz", function (data) {
        let val1 = "first_name";
        let val2 = "last_name";
        var firstname = '';
        var lastname = '';
        data.map(obj => {
            Object.entries(obj).map(([key, value]) => {
                if (`${key}` == val1) {
                    firstname = `${value}`;
                }

                if (`${key}` == val2) {
                    lastname = `${value}`;
                }

            });
            console.log('your name : ' + firstname + ' ' + lastname)
            console.log('-------------------');
        });

    });
}
/// bài 4 
const button7 = document.getElementById('transform');
button7.addEventListener('click', transform)
function transform() {
    $.getJSON("https://api.myjson.com/bins/m8brz", function (data) {
        var output = data.map(s => {
            if (s.hasOwnProperty("first_name")) {
                s.firstName = s.first_name;
                delete s.first_name;
            }

            if (s.hasOwnProperty("last_name")) {
                s.lastName = s.last_name;
                delete s.last_name;
            }
            return s;
        })

        output.forEach(obj => {
            Object.entries(obj).forEach(([key, value]) => {
                console.log(`${key}` + " : " + `${value}`);
            });
            console.log("-------------------------");

        });

    });
}

//  bài 5
const button3 = document.getElementById('ave');
button3.addEventListener('click', ave)

function ave() {
    $.getJSON("https://api.myjson.com/bins/m8brz", function (data) {
        var sum = data.reduce(function (accumulator, currentValue) {
            return accumulator + currentValue.age
        }, 0);
        var avr = sum / data.length;
        console.log(sum);
        console.log(avr);
    });

}
// bài 6

//Examp1 
const button4 = document.getElementById('reex1');
button4.addEventListener('click', RedueExmp1);

function RedueExmp1() {
    $.getJSON("https://api.myjson.com/bins/m8brz", function (data) {
        let rs2;
        rs1 = data.reduce(function (acc, cur) {
            let go;
            go = acc + "\n" + "First_name : " + cur.first_name + "\n" + "Last_name : " + cur.last_name + "\n";
            return go;
        }, 0);


    });

}

//Examp2 
const button5 = document.getElementById('reex2');
button5.addEventListener('click', RedueExmp2);
function RedueExmp2() {
    $.getJSON("https://api.myjson.com/bins/m8brz", function (data) {
        let rs2;
        var newage = data.filter(function (el) {
            return el.age < 40 &&
                el.gender == "Male";
        });
        rs2 = newage.reduce(function (acc, cur) {
            let go;
            go = acc + "\n" + "id: " + cur.id + "\n" + "First Name: " + cur.first_name + "\n" + "Last Name: " + cur.last_name + "\n" + "Email: " + cur.email + "\n" + "Gender: " + cur.gender + "\n" + "Age: " + cur.age + "\n" + "Salary: " + cur.salary + "\n";
            return go;
        }, 0);
        console.log(rs2);

    });

}

//Examp3
const button6 = document.getElementById('reex3');
button6.addEventListener('click', RedueExmp3);
function RedueExmp3() {
    $.getJSON("https://api.myjson.com/bins/m8brz", function (data) {
        let rs2;

        rs2 = data.reduce(function (acc, cur) {
            let go;
            go = "\n" + "id: " + cur.id + "\n" + "First Name: " + cur.first_name + "\n" + "Last Name: " + cur.last_name + "\n" + "Email: " + cur.email + "\n" + "Gender: " + cur.gender + "\n" + "Age: " + cur.age + "\n" + "Salary: " + cur.salary + "\n" + acc;
            return go;
        }, 0);
        console.log(rs2);

    });

}
/// bài 7
Array.prototype.mymap = function (callback) {
    const resultArray = [];
    for (let index = 0; index < this.length; index++) {
        resultArray.push(callback(this[index], index, this));
    }
    return resultArray;
}
/// bài 8
Array.prototype.myfilter = function (callback) {
    var filtered = [];
    for (let i = 0; i < this.length; i++) {
        if (callback(this[i], i, this)) filtered.push(this[i]);
    }
    return filtered;
};
//// bài 9
Array.prototype.myreduce = function (f, result) {
    var i = 0;
    if (arguments.length < 2) {
        i = 1;
        result = this[0];
    }
    for (; i < this.length; i++) {
        result = f(result, this[i], i, this);
    }
    return result;
};
// bài 10 :

/// user myreduce to create map function 
Array.prototype.mapFunction = function (mapFn) {

    return this.myreduce(function (result, currentValue) {

        const mappedValue = mapFn(currentValue);


        return [...result, mappedValue];
    }, []);
};
/// user myreduce to create filter function 
Array.prototype.filterFunction = function (test) {
    return this.myreduce(function (arr, el) {

        if (test(el)) {
            arr.push(el);
        }

        return arr;
    }, []);
}

/////////////////////// Bài 11  :

//examp1 : 

const button8 = document.getElementById('sumitem');
button8.addEventListener('click', Sumallitem);
function Sumallitem() {
    $.getJSON("https://api.myjson.com/bins/m8brz", function (data) {

        var sum = data.reduce((initialVal) => {
            return initialVal + 1;
            // alert(sum)
        }, 0);
        console.log(sum);


    });

}
//Examp2 : 
const button9 = document.getElementById('sumProItem');
button9.addEventListener('click', Sumallitem);
function Sumallitem() {
    $.getJSON("https://api.myjson.com/bins/m8brz", function (data) {

        var product = data.reduce((initialVal, item, index, arr) => {
            var pro = Object.keys(item).length;
            return initialVal + pro;
        }, 0);
        console.log(product);

    });

}

