var options = {
        series: [
            { name: "series1", data: [0, 180, 60, 220, 85, 190, 70] },
            { name: "series2", data: [0, 15, 250, 21, 365, 120, 30] },
        ],
        chart: { toolbar: { show: !1 }, height: 350, type: "area" },
        dataLabels: { enabled: !1 },
        yaxis: {
            labels: {
                formatter: function(e) {
                    return e + "k";
                },
            },
            tickAmount: 4,
            min: 0,
            max: 400,
        },
        stroke: { curve: "smooth", width: 2 },
        grid: {
            show: !0,
            borderColor: "#90A4AE",
            strokeDashArray: 0,
            position: "back",
            xaxis: { lines: { show: !0 } },
            yaxis: { lines: { show: !0 } },
            row: { colors: void 0, opacity: 0.8 },
            column: { colors: void 0, opacity: 0.8 },
            padding: { top: 10, right: 0, bottom: 10, left: 10 },
        },
        legend: { show: !1 },
        colors: ["#0f9cf3", "#6fd088"],
        labels: ["2015", "2016", "2017", "2018", "2019", "2020", "2021"],
    },
    chart = new ApexCharts(document.querySelector("#area_chart"), options);
chart.render();
options = {
    series: [{
            name: "2020",
            type: "column",
            data: [23, 42, 35, 27, 43, 22, 17, 31, 22, 22, 12, 16],
        },
        {
            name: "2019",
            type: "line",
            data: [23, 32, 27, 38, 27, 32, 27, 38, 22, 31, 21, 16],
        },
    ],
    chart: { height: 350, type: "line", toolbar: { show: !1 } },
    stroke: { width: [0, 2.3], curve: "straight" },
    plotOptions: { bar: { horizontal: !1, columnWidth: "34%" } },
    dataLabels: { enabled: !1 },
    markers: {
        size: [0, 3.5],
        colors: ["#6fd088"],
        strokeWidth: 2,
        strokeColors: "#6fd088",
        hover: { size: 4 },
    },
    legend: { show: !1 },
    yaxis: {
        labels: {
            formatter: function(e) {
                return e + "k";
            },
        },
        tickAmount: 5,
        min: 0,
        max: 50,
    },
    colors: ["#0f9cf3", "#6fd088"],
    labels: [
        "Jan",
        "Feb",
        "Mar",
        "Apr",
        "May",
        "Jun",
        "Jul",
        "Aug",
        "Sep",
        "Oct",
        "Nov",
        "Dec",
    ],
};
(chart = new ApexCharts(
    document.querySelector("#column_line_chart"),
    options
)).render();
options = {
    series: [42, 26, 30],
    chart: { height: 286, type: "donut" },
    labels: ["Market Place", "Last Week", "Last Month"],
    plotOptions: {
        pie: {
            donut: {
                size: "73%",
                labels: {
                    show: !0,
                    name: { show: !0, fontSize: "18px", offsetY: 5 },
                    value: {
                        show: !1,
                        fontSize: "20px",
                        color: "#343a40",
                        offsetY: 8,
                    },
                    total: {
                        show: !0,
                        fontSize: "17px",
                        label: "Ethereum",
                        color: "#6c757d",
                        fontWeight: 600,
                    },
                },
            },
        },
    },
    dataLabels: { enabled: !1 },
    legend: { show: !1 },
    colors: ["#0f9cf3", "#6fd088", "#ffbb44"],
};
(chart = new ApexCharts(
    document.querySelector("#donut-chart"),
    options
)).render();