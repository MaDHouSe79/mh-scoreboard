MHScoreboard = {};

$(document).ready(function () {
    window.addEventListener("message", function (event) {
        switch (event.data.action) {
            case "open":
                MHScoreboard.Open(event.data);
                break;
            case "close":
                MHScoreboard.Close();
                break;
        }
    });
});

MHScoreboard.LoadPage = function (data) {
    $("#logo").attr("src", data.lang['logo']);
    $('#server-info').empty();
	$('#server-info').append(data.lang['server_info']);
    $('#title-robbery').empty();
	$('#title-robbery').append(data.lang['title_robbery']);
    $('#title-status').empty();
	$('#title-status').append(data.lang['title_status']);
    $('#title-jobs').empty();
	$('#title-jobs').append(data.lang['title_jobs']);
    $('#title-active').empty();
	$('#title-active').append(data.lang['title_active']);
    $('#title-players').empty();
	$('#title-players').append(data.lang['title_players']);
    $("#total-players").html("<p>" + data.players + "/" + data.maxPlayers + "</p>");
};

MHScoreboard.LoadJobs = function (data) {
    $('#joblist').empty();
    var html = ""
    var myarray = [];
    $.each(data.currentJobs, function (i, job) {
        if (job.active == true) {
            myarray.push({name: job.name, label: job.label, icon: job.icon, count: job.count, active: job.active});
        }
    });
    var res = myarray.sort(({count:a}, {count:b}) => b - a);
    $.each(myarray, function (i, job) {
        if (job.active == true) {
            var count = job.count;
            var color = "black";
            if (job.count > 0) { color = "green"; }
            if (job.name != 'mayor' && job.name != 'cardealer' && job.name != 'drivingteacher' && job.name != 'realestate') {       
                html += '<div class="scoreboard-info-beam" data-type="policeonline" style="background: rgba(255, 255, 255, 0.7);">';
                html += '    <div class="info-beam-title"><p>' + job.icon + ' | ' + job.label + ':</p></div>';
                html += '    <div class="info-beam-status1"><p style="color:' + color + ';">' + count + '</p></div>';
                html += '</div>';
            }
        }
    });
    $.each(data.currentJobs, function (i, job) {
        if (job.active == true) {
            var count = job.count;
            var color = "black";
            if (job.count > 0) { color = "green"; }
            if (job.name == 'mayor' || job.name == 'cardealer' || job.name == 'drivingteacher' || job.name == 'realestate') {
                if (job.count > 0) { count = data.lang['yes']; } else { count = data.lang['no']; }
                if (job.count > 0) {
                    html += '<div class="scoreboard-info-beam" data-type="policeonline" style="background: rgba(255, 255, 255, 0.7);">';
                    html += '    <div class="info-beam-title"><p>' + job.icon + ' | ' + job.label + ':</p></div>';
                    html += '    <div class="info-beam-status1"><p style="color:' + color + ';">' + count + '</p></div>';
                    html += '</div>';
                }
            }
        }
    });
    $.each(data.currentJobs, function (i, job) {
        if (job.active == true) {
            var count = job.count;
            var color = "black";
            if (job.count > 0) { color = "green"; }
            if (job.name == 'mayor' || job.name == 'cardealer' || job.name == 'drivingteacher' || job.name == 'realestate') {
                if (job.count <= 0) {
                    if (job.count > 0) { count = data.lang['yes']; } else { count = data.lang['no']; }
                    html += '<div class="scoreboard-info-beam" data-type="policeonline" style="background: rgba(255, 255, 255, 0.7);">';
                    html += '    <div class="info-beam-title"><p>' + job.icon + ' | ' + job.label + ':</p></div>';
                    html += '    <div class="info-beam-status1"><p style="color:' + color + ';">' + count + '</p></div>';
                    html += '</div>';
                }
            }
        }
    });
    $("#joblist").append(html); 
};

MHScoreboard.LoadCrimes = function (data) {
    $('#activityList').empty();
    var html = ""
    var myarray = [];
    $.each(data.requiredCops, function (i, category) {
        if (category.active == true) {
            myarray.push({label: category.label, icon: category.icon, busy: category.busy, minimum: category.minimum, active: category.active});
        }
    });
    var res = myarray.sort(({minimum:a}, {minimum:b}) => a - b);
    $.each(myarray, function (i, category) {
        if (category.active == true) {
            var status = "<i class='fas fa-times'></i>";
            var color = "red";
            if (category.busy == true) {
                color = "red";
                status = "<i class='fas fa-people-carry'></i>";
            } else if (data.currentCops >= category.minimum) {
                color = "green";
                status = "<i class='fas fa-check'></i>";
            } else {
                color = "red";
                status = "<i class='fas fa-times'></i>";
            }
            html += '<div class="scoreboard-info-beam" data-type="storerobbery" style="background: rgba(255, 255, 255, 0.7);">';
            html += '    <div class="info-beam-title"><p>' + category.icon + ' | ' + category.label + ':</p></div>';
            html += '    <div class="info-beam-status"><span style="color:' + color + ' ">' + status + '</span></div>';
            html += '</div>';
        }
    });
    $("#activityList").append(html); 
};

MHScoreboard.Open = function (data) {
    $(".scoreboard-block").fadeIn(150);
    MHScoreboard.LoadPage(data);
    MHScoreboard.LoadJobs(data);
    MHScoreboard.LoadCrimes(data);
};

MHScoreboard.Close = function () {
    $(".scoreboard-block").fadeOut(150);
    $('#joblist').empty();
    $('#activityList').empty();
};