document.addEventListener('DOMContentLoaded', function () {
    const bagReviewsDataInput = document.getElementById('bagReviewsData');
    // console.log(bagReviewsDataInput);    
    const bagReviewsDataString = bagReviewsDataInput.value;
    // console.log(bagReviewsDataString);
    const bagReviewsData = JSON.parse(bagReviewsDataString);
    console.log(bagReviewsData);

    // const reviewValues = Array.from(new Set(bagReviewsData));
    const reviewValues = [1, 2, 3, 4, 5];
    const reviewCounts = reviewValues.map(value => bagReviewsData.filter(x => x === value).length);
    const totalReviews = reviewCounts.reduce((total, count) => total + count, 0);
    const reviewPercentages = reviewCounts.map(count => (count / totalReviews) * 100);

    console.log(reviewValues);
    console.log(reviewPercentages);

    const chartWidth = 1080;
    const chartHeight = 180;
    const ctx = document.getElementById('reviewChart');
    ctx.width = chartWidth;
    ctx.height = chartHeight;

    new Chart(ctx, {
        type: 'bar',
        data: {
          labels: reviewValues,
          datasets: [{
            data: reviewPercentages,
            backgroundColor: ["#737373", "#B9C8EA", "#D0DBF7", "#4294FF", "#225EFF"],
          }],
        },
        options: {
          responsive: false,
          maintainAspectRatio: false,
          indexAxis: 'y',
          scales: {
            x: {
              beginAtZero: true,
              max: 100,
              min: 0,
              ticks: {
                callback: value => `${value}%`,
              },
              title: {
                display: true,
                text: 'Review Count / value (%)',
                font: {
                  size: 14,
                  weight: 'bold',
                },
              },
            },
            y: {
              title: {
                display: true,
                text: 'Review Value',
                font: {
                  size: 14,
                  weight: 'bold',
                },
              },
            },
          },
          plugins: {
            legend: {
              display: false, // Hide the legend
            },
          },
        },
      });
      
    

});

