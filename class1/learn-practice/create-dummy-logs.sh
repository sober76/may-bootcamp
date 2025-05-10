#!/bin/bash
#
# Script to create dummy log files for testing Script 2
#

# Create main dummy log file
cat > /tmp/dummy_application.log << 'EOF'
2024-01-15 08:00:01 INFO Application starting up...
2024-01-15 08:00:02 INFO Loading configuration from /etc/app/config.conf
2024-01-15 08:00:03 INFO Database connection established
2024-01-15 08:00:05 INFO Server listening on port 8080
2024-01-15 08:05:12 INFO User 'john.doe' logged in successfully
2024-01-15 08:05:15 INFO Processing request for /api/data
2024-01-15 08:05:16 INFO Request completed successfully
2024-01-15 08:10:23 WARNING High memory usage detected: 85%
2024-01-15 08:15:30 ERROR Failed to connect to external API: timeout
2024-01-15 08:15:31 ERROR Retrying connection attempt 1/3
2024-01-15 08:15:35 ERROR Retrying connection attempt 2/3
2024-01-15 08:15:40 ERROR Connection failed after 3 attempts
2024-01-15 08:20:45 INFO User 'jane.smith' logged in successfully
2024-01-15 08:25:10 WARNING Disk space low on /var/log: 90% used
2024-01-15 08:30:15 ERROR Database query failed: connection refused
2024-01-15 08:30:16 ERROR Stack trace: java.sql.SQLException at DBConnector.java:45
2024-01-15 08:30:17 INFO Attempting database reconnection
2024-01-15 08:30:18 INFO Database connection restored
2024-01-15 08:35:22 DEBUG Processing batch job #1234
2024-01-15 08:40:33 WARNING CPU usage high: 92%
2024-01-15 08:45:44 ERROR Authentication failed for user 'admin'
2024-01-15 08:45:45 WARNING Multiple failed login attempts detected
2024-01-15 08:50:55 INFO Scheduled backup started
2024-01-15 08:51:00 INFO Backing up database...
2024-01-15 08:55:10 INFO Backup completed successfully
2024-01-15 09:00:00 INFO Daily report generation started
2024-01-15 09:00:15 WARNING Report template not found, using default
2024-01-15 09:00:30 INFO Report generated: daily_report_20240115.pdf
2024-01-15 09:05:45 ERROR File upload failed: insufficient permissions
2024-01-15 09:05:46 ERROR User 'guest' attempted to upload to restricted directory
2024-01-15 09:10:12 CRITICAL System memory critically low: 95%
2024-01-15 09:10:13 CRITICAL Emergency garbage collection initiated
2024-01-15 09:10:20 WARNING Memory usage reduced to 75%
2024-01-15 09:15:30 INFO Cache cleared successfully
2024-01-15 09:20:45 ERROR Email notification failed: SMTP error
2024-01-15 09:20:46 ERROR Could not send alert to admin@company.com
2024-01-15 09:25:00 INFO User session cleanup completed
2024-01-15 09:30:15 WARNING SSL certificate expires in 30 days
2024-01-15 09:35:22 INFO Application health check: OK
2024-01-15 09:40:33 ERROR Invalid configuration parameter: max_connections
2024-01-15 09:40:34 WARNING Using default value for max_connections
2024-01-15 09:45:44 INFO New user registration: user123@email.com
2024-01-15 09:50:55 ERROR Payment processing failed: gateway timeout
2024-01-15 09:50:56 ERROR Transaction ID: TRX-789012 rolled back
2024-01-15 09:55:10 INFO System metrics collected
2024-01-15 10:00:00 INFO Scheduled maintenance window started
2024-01-15 10:00:01 WARNING Service will be unavailable for 10 minutes
2024-01-15 10:10:00 INFO Maintenance completed successfully
2024-01-15 10:10:01 INFO All services restored
2024-01-15 10:15:15 DEBUG API rate limit: 4500/5000 requests
2024-01-15 10:20:30 ERROR Failed to write to log file: disk full
2024-01-15 10:20:31 CRITICAL Log rotation failed
2024-01-15 10:20:32 CRITICAL System entering degraded mode
2024-01-15 10:25:45 INFO Emergency disk cleanup initiated
2024-01-15 10:30:00 INFO Disk space recovered: 20GB freed
2024-01-15 10:30:01 INFO System returning to normal operation
2024-01-15 10:35:15 WARNING Unusual network activity detected
2024-01-15 10:35:16 WARNING Possible security scan from IP: 192.168.1.100
2024-01-15 10:40:30 INFO Security scan blocked by firewall
2024-01-15 10:45:45 ERROR API key validation failed for client: CLIENT-456
2024-01-15 10:45:46 ERROR Access denied for endpoint: /api/admin
2024-01-15 10:50:00 INFO Generating monthly statistics
2024-01-15 10:50:30 INFO Statistics saved to /var/reports/monthly_stats.json
2024-01-15 10:55:15 WARNING Database replication lag: 5 seconds
2024-01-15 11:00:00 INFO Application shutdown initiated
2024-01-15 11:00:01 INFO Gracefully closing connections
2024-01-15 11:00:05 INFO Application stopped successfully
EOF

# Create a smaller log file for testing
cat > /tmp/test.log << 'EOF'
2024-01-15 10:00:00 INFO Service started
2024-01-15 10:05:00 WARNING Memory usage at 75%
2024-01-15 10:10:00 ERROR Connection timeout
2024-01-15 10:15:00 INFO Service recovered
2024-01-15 10:20:00 CRITICAL Disk space critical
EOF

# Create an empty log file
touch /tmp/empty.log

# Create a large dummy log (by repeating the content)
for i in {1..100}; do
    cat /tmp/dummy_application.log >> /tmp/large_dummy.log
done

echo "Created dummy log files:"
echo "  /tmp/dummy_application.log - Main test file"
echo "  /tmp/test.log - Small test file"
echo "  /tmp/empty.log - Empty file"
echo "  /tmp/large_dummy.log - Large file for testing"
echo ""
echo "Test Script 2 with these commands:"
echo "  ./script2.sh /tmp/dummy_application.log error"
echo "  ./script2.sh /tmp/dummy_application.log warning"
echo "  ./script2.sh /tmp/dummy_application.log critical"
echo "  ./script2.sh /tmp/test.log"
echo "  ./script2.sh /tmp/empty.log"
echo "  ./script2.sh /tmp/nonexistent.log"