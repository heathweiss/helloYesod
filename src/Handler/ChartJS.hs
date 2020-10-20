{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE TypeFamilies          #-}
module Handler.ChartJS where

import Import
import Text.Julius (RawJS (..))

getChartJSR :: Handler Html
getChartJSR = defaultLayout $ do
    setTitle "Create Chart.js"
    toWidget [lucius| h1 { color: green; } |]
    addScriptRemote "https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"
    addScriptRemote "https://cdn.jsdelivr.net/npm/chart.js@2.8.0"
    
    toWidgetHead
        [hamlet|
            <meta name=keywords content="some sample keywords">
        |]
    
    
    [whamlet|Creating a Chartjs.org chart:
           <ul>
            <li>see: https://www.yesodweb.com/book/widgets for how I embedded the julius
            <li>see: https://www.chartjs.org/docs/latest/ for the simple chart I made
            <li>Use addScriptRemote https://cdn.jsdelivr.net/npm/chart.js@2.8.0 to bring in the charting javascript.
          |]
    toWidget
        [hamlet|
            <h1>CAPITALIZE LABELS
        |]
    
    
    
    [whamlet|<canvas id="myChart" width="400" height="400">
          |]
    
    toWidget
       [julius|
             var ctx = document.getElementById('myChart').getContext('2d');
             var myChart = new Chart(ctx, {
              type: 'bar',
              data: {
              labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
              datasets: [{
              label: '# of Votes',
              data: [12, 19, 3, 5, 2, 3],
              backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
              ],
              borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
              ],
              borderWidth: 1
              }]
              },
              options: {
              scales: {
              yAxes: [{
                ticks: {
                    beginAtZero: true
                }}]}}});
             
       |]
    
