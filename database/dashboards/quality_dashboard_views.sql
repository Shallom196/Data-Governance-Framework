CREATE OR REPLACE VIEW quality_metrics.monitoring_dashboard AS
SELECT 
    current_timestamp as check_time,
    data_domain,
    metric,
    value,
    quality_score,
    status
FROM quality_metrics.quality_dashboard
ORDER BY data_domain, metric;