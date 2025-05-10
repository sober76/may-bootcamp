#!/bin/bash
#
# Demo script to show high CPU/Memory usage
#

echo "Starting high CPU/Memory usage demonstration..."

# Start the application
echo "1. Starting application..."
docker-compose up -d web-app

# Wait for application to be ready
echo "2. Waiting for application to be ready..."
sleep 5

# Start live monitor in background
echo "3. Starting live monitor..."
docker-compose --profile monitor up -d

echo "4. Starting stress tests to push CPU/Memory beyond 50%..."
echo ""
echo "Watch the live monitor to see resource usage increase!"
echo "Open a new terminal and run: docker logs -f live-monitor"
echo ""

# Start multiple stress generators to push usage high
echo "Phase 1: Medium stress (warming up)..."
docker-compose run -d -e STRESS_LEVEL=medium stress-generator

sleep 10

echo "Phase 2: High stress (pushing to 60%+)..."
docker-compose run -d -e STRESS_LEVEL=high stress-generator

sleep 10

echo "Phase 3: Extreme stress (pushing to 80%+)..."
docker-compose run -d -e STRESS_LEVEL=extreme stress-generator

sleep 10

echo "Phase 4: CPU intensive (maxing out)..."
docker-compose run -d -e STRESS_LEVEL=cpu-intensive stress-generator

echo ""
echo "All stress generators started!"
echo ""
echo "Monitor the usage with:"
echo "  docker logs -f live-monitor"
echo ""
echo "Or run local live monitor:"
echo "  ./monitor_container.sh live"
echo ""
echo "To stop all stress tests:"
echo "  docker-compose down"
echo ""
echo "Press Ctrl+C to stop watching..."

# Keep script running
wait