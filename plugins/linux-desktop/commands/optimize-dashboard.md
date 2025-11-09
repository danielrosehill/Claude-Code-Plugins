Optimize and enhance display dashboard for kiosk mode.

Your task:
1. Gather requirements:
   - Target screen sizes (desktop, tablet, large displays)
   - Kiosk mode duration (hours/days continuously)
   - Key metrics to display
   - Update frequency requirements

2. Optimize for extended display:
   - **Caching strategy**:
     - Service worker for offline capability
     - Cache API for data storage
     - LocalStorage for persistent state

   - **Refresh functionality**:
     - Auto-refresh intervals
     - Manual refresh option
     - Stale data indicators
     - Error recovery

3. Responsive design for multiple screens:
   - Fluid layouts that adapt to screen size
   - Breakpoints for common displays
   - Optimal font scaling
   - Touch-friendly controls (if applicable)

4. Performance optimization:
   - Lazy loading for data
   - Efficient rendering (virtualization for large datasets)
   - Resource cleanup to prevent memory leaks
   - Optimize animations for long-running displays

5. Visual design for readability:
   - High contrast for visibility
   - Clear hierarchy
   - Minimal clutter
   - Status indicators

For static site generator dashboards, ensure compatibility and optimal caching strategies.
