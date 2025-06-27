<style>  
    .ip_status_table {
      width: 100%;
      text-align: center;
      margin-top: 5px;
      margin-bottom: 5px;

    }
  
    .ip_status_table th {
      background-color: #1c2541;
      color:#fff;
      font-weight: normal;
    }
  
    .ip_status_table th, .ip_status_table td{
      text-align: center;
      border-bottom: 1px solid #e0e0e0;
      padding: 5px;
    }

    .ip_status_table th:first-child {
        border-bottom-left-radius: 5px;
        border-top-left-radius: 5px;
    }
    .ip_status_table th:last-child {
        border-bottom-right-radius: 5px;
        border-top-right-radius: 5px;
    }
    /* .ip_status_table td:nth-child(1), .ip_status_table td:nth-child(3), .ip_status_table td:nth-child(5) {
        border-right: 1px solid #e0e0e0;
    } */
    .ip_status_table th:nth-child(1), .ip_status_table th:nth-child(3), .ip_status_table th:nth-child(5) {
        border-right: 1px solid white;
    }
  </style>
    <div style="position: absolute; inset: 0; padding-left: 10px; padding-right: 10px;">
        <div>
            <table class="ip_status_table">
            <tr>
                <th class="th-cell">Server IP</th>
                <th class="th-cell">AppName</th>
                <th class="th-cell">Server Heartbeat</th>
				<th class="th-cell">Last Execution Time</th>
                <th class="th-cell">Health Agent</th>
				<th class="th-cell">Last Execution Time</th>
                <th class="th-cell">Log Agent</th>
				<th class="th-cell">Last Execution Time</th>
                <th class="th-cell">Traces (Otel)</th>
            </tr>
            {{#data}}
            <tr>
                <td>{{ip_address}}</td>
                {{#ip_metrics}}
                    <td style="color:{{color}};">{{value}}</td>
                {{/ip_metrics}}
            </tr>
            {{/data}}
        </div>
    </div>